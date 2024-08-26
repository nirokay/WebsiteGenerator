## Sugar module
## ============
##
## This module includes some sugar syntax for creating `CssElement`, `CssAttribute`, `HtmlElement` and
## other usage.

import std/[strutils, sequtils]
import generators

proc `[]`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    newHtmlElement(tag, tagAttributes)

proc `=>`*(attribute, value: string): HtmlElementAttribute =
    result = attr(attribute, value)

proc `{}`*(element: string, properties: varargs[CssAttribute]): CssElement =
    ## Sugar assignment of properties (start name with a `.` to automatically make it a class)
    if element.startsWith("."): newCssClass(element, properties)
    else: newCssElement(element, properties)

proc `:=`*(property, value: string): CssAttribute =
    ## Sugar constructor for `CssAttribute`
    [property, value]

proc `=>`*(element: var HtmlElement, content: string|HtmlElement) =
    ## Sugar content assignment
    element.content = $content
proc `&=>`*(element: var HtmlElement, content: string|HtmlElement) =
    ## Sugar content appending
    element.content &= $content

proc `=>`*(element: HtmlElement, content: string|HtmlElement): HtmlElement =
    ## Sugar content assignment
    result = element
    result &=> content
proc `&=>`*(element: HtmlElement, content: string|HtmlElement): HtmlElement =
    ## Sugar content appending
    result = element
    result &=> content

proc `->`*(element: var HtmlElement, class: string) =
    ## Sugar for class assignment
    element.class = class
proc `->`*(element: var HtmlElement, class: CssElement) =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    if not class.isClass:
        raise ValueError.newException("Class assignment: CssElement is not a class")
    element -> class.name

proc `->`*(element: HtmlElement, class: string): HtmlElement =
    ## Sugar for class assignment
    result = element
    result -> class
proc `->`*(element: HtmlElement, class: CssElement): HtmlElement =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    result = element
    result -> class

proc addStyle*(element: var HtmlElement, attributes: seq[CssAttribute]) =
    var style: string
    for attribute in attributes:
        style.add attribute[0] & ":" & attribute[1] & ";"
    element.addattr("style", style)
proc addStyle*(element: var HtmlElement, attributes: varargs[CssAttribute]) =
    element.addStyle(attributes.toSeq())

proc addStyle*(element: HtmlElement, attributes: seq[CssAttribute]): HtmlElement =
    result = element
    result.addStyle(attributes)
proc addStyle*(element: HtmlElement, attributes: varargs[CssAttribute]): HtmlElement =
    result = element
    result.addStyle(attributes.toSeq())

proc attrStyle*(element: HtmlElement, attributes: seq[CssAttribute]): HtmlElement {.deprecated: "use `addStyle` instead".} = element.addStyle(attributes)
proc attrStyle*(element: HtmlElement, attributes: varargs[CssAttribute]): HtmlElement {.deprecated: "use `addStyle` instead".} = element.addStyle(attributes)



# Example:
runnableExamples:
    import websitegenerator

    # Creating new, empty `HtmlElement`:
    var header: HtmlElement = "h1"[]

    # Setting content:
    header => "Some content"

    # Css:
    var stylesheet: CssStyleSheet = newCssStyleSheet("styles.css")

    let classCenter: CssElement = newCssClass("center",
        "text-align" := "center",
        "margin" := "auto"
    )

    stylesheet.add(
        classCenter,
        "h1, h2, h3, h4, h5, h6"{
            "text-align" := "center",
            "text-decoration" := "underline"
        }
    )

    # Class assignment:
    header -> classCenter

    header = header.attrStyle(
        "text-align" := "left" # Overriding for a single element
    )

    assert $header == """<h1 style="text-align:left;" class="center">Some content</h1>"""

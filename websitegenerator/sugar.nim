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
    ## Sugar constructor for `HtmlElementAttribute`
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
proc `->`*(element: HtmlElement, class: string): HtmlElement =
    ## Sugar for class assignment
    result = element
    result -> class

proc `->`*(element: var HtmlElement, class: CssElement) =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    if not class.isClass:
        raise ValueError.newException("Class assignment: CssElement '" & class.name & "' is not a class")
    element -> class.name
proc `->`*(element: HtmlElement, class: CssElement): HtmlElement =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    result = element
    result -> class

proc `&->`*(element: var HtmlElement, class: string) =
    ## Sugar for appending a new class
    element -> strip(element.class & " " & class)
proc `&->`*(element: HtmlElement, class: string): HtmlElement =
    ## Sugar for appending a new class
    result = element
    result &-> class

proc `&->`*(element: var HtmlElement, class: CssElement) =
    ## Sugar for appending a new class, raises `ValueError` when passed `CssElement` is not a class
    if not class.isClass:
        raise ValueError.newException("Class appending: CssElement '" & class.name & "' is not a class")
    element &-> class.name
proc `&->`*(element: HtmlElement, class: CssElement): HtmlElement =
    ## Sugar for appending a new class, raises `ValueError` when passed `CssElement` is not a class
    result = element
    result &-> class

proc `&->`*(element: var HtmlElement, classes: seq[string]) =
    ## Sugar for appending a new class
    for class in classes:
        element &-> class
proc `&->`*(element: HtmlElement, classes: seq[string]): HtmlElement =
    ## Sugar for appending a new class
    result = element
    result &-> classes

proc `&->`*(element: var HtmlElement, classes: seq[CssElement]) =
    ## Sugar for appending a new class, raises `ValueError` when passed `CssElement` is not a class
    for class in classes:
        element &-> class.name
proc `&->`*(element: HtmlElement, classes: seq[CssElement]): HtmlElement =
    ## Sugar for appending a new class, raises `ValueError` when passed `CssElement` is not a class
    result = element
    result &-> classes


proc addStyle*(element: var HtmlElement, attributes: seq[CssAttribute]) =
    ## Adds a/appends to the `style` HTML attribute
    var style: string
    for attribute in attributes:
        style.add attribute[0] & ":" & attribute[1] & ";"
    element.addattr("style", style)
proc addStyle*(element: var HtmlElement, attributes: varargs[CssAttribute]) =
    ## Adds a/appends to the `style` HTML attribute
    element.addStyle(attributes.toSeq())

proc addStyle*(element: HtmlElement, attributes: seq[CssAttribute]): HtmlElement =
    ## Adds a/appends to the `style` HTML attribute
    result = element
    result.addStyle(attributes)
proc addStyle*(element: HtmlElement, attributes: varargs[CssAttribute]): HtmlElement =
    ## Adds a/appends to the `style` HTML attribute
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

    header.addStyle(
        "text-align" := "left" # Overriding for a single element
    )

    assert $header == """<h1 style="text-align:left;" class="center">Some content</h1>"""

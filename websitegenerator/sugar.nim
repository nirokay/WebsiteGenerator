## Sugar module
## ============
##
## This module includes some sugar syntax for creating `CssElement`, `CssAttribute`, `HtmlElement` and
## other usage.

import std/[strutils]
import generators

proc `[]`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    newHtmlElement(tag, tagAttributes)
#[
proc `{}`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    tag[tagAttributes]

proc `[]=`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    result = newHtmlElement(tag, tagAttributes)

proc `{}=`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    result = newHtmlElement(tag, tagAttributes)
]#

proc `=>`*(attribute, value: string): HtmlElementAttribute =
    result = attr(attribute, value)

proc `{}`*(element: string, properties: varargs[CssAttribute]): CssElement =
    ## Sugar assignment of properties (start name with a `.` to automatically make it a class)
    if element.startsWith("."): newCssClass(element, properties)
    else: newCssElement(element, properties)
#[
proc `[]`*(element: string, properties: varargs[CssAttribute]): CssElement =
    ## Sugar assignment of properties
    newCssElement(element, properties)
]#

proc `:=`*(property, value: string): CssAttribute =
    ## Sugar constructor for `CssAttribute`
    [property, value]

proc `=>`*(element: var HtmlElement, content: string) =
    ## Sugar content assignment
    element.content = content

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

    assert $header == """<h1 class="center">Some content</h1>"""

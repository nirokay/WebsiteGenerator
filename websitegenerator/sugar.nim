## Sugar module
## ============
##
## This module includes some sugar syntax for creating `CssElement`, `CssAttribute`, `HtmlElement` and
## other usage.

import std/[strutils, sequtils]
import generators


# Tag creation, HTML Attributes and CSS Properties ----------------------------

proc `=>`*(tag: string, child: HtmlElement): HtmlElement = newHtmlElement(tag, child) ## Sugar constructor for `HtmlElement`
proc `=>`*(tag: string, child: AnyToHtml): HtmlElement = newHtmlElement(tag, <$>child) ## Sugar constructor for `HtmlElement`
proc `=>`*(tag: string, children: seq[HtmlElement]): HtmlElement = newHtmlElement(tag, children) ## Sugar constructor for `HtmlElement`
proc `=>`*(tag: string, children: seq[AnyToHtml]): HtmlElement = newHtmlElement(tag, <$>children) ## Sugar constructor for `HtmlElement`

proc `[]`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for `HtmlElement`
    newHtmlElement(tag, tagAttributes.toSeq())

proc `-=`*(attribute, value: AnyToHtml): HtmlElementAttribute =
    ## Sugar constructor for `HtmlElementAttribute`
    result = attr(attribute, $value)


proc `{}`*(element: string, properties: varargs[CssAttribute]): CssElement =
    ## Sugar assignment of properties (start name with a `.` to automatically make it a class)
    if element.startsWith("."): newCssClass(element, properties)
    else: newCssElement(element, properties)

proc `:=`*(property, value: string): CssAttribute =
    ## Sugar constructor for `CssAttribute`
    [property, value]


# HTML children ---------------------------------------------------------------

proc `=>`*(element: var HtmlElement, child: HtmlElement|string) =
    ## Sugar children assignment
    element.children = @[<$>child]
proc `=>`*(element: HtmlElement, child: HtmlElement|string): HtmlElement =
    ## Sugar children assignment
    result = element
    result => child

proc `=>`*(element: var HtmlElement, children: seq[HtmlElement]|seq[string]) =
    ## Sugar children assignment
    element.children = <$>children
proc `=>`*(element: HtmlElement, children: seq[HtmlElement]|seq[string]): HtmlElement =
    ## Sugar children assignment
    result = element
    result => children

proc `&=>`*(element: var HtmlElement, child: HtmlElement|string) =
    ## Sugar children appending
    element.add @[<$>child]
proc `&=>`*(element: HtmlElement, child: HtmlElement|string): HtmlElement =
    ## Sugar children appending
    result = element
    result &=> child

proc `&=>`*(element: var HtmlElement, children: seq[HtmlElement]|seq[string]) =
    ## Sugar children appending
    element.add <$>children
proc `&=>`*(element: HtmlElement, children: seq[HtmlElement]|seq[string]): HtmlElement =
    ## Sugar children appending
    result = element
    result &=> children


proc `->`*(element: var HtmlElement, class: string) =
    ## Sugar for class assignment
    element.tagAttributes.add newAttribute("class", class)
proc `->`*(element: HtmlElement, class: string): HtmlElement =
    ## Sugar for class assignment
    result = element
    result -> class

proc `->`*(element: var HtmlElement, class: CssElement) =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    if not class.isClassSelector():
        raise ValueError.newException("Class assignment: CssElement '" & class.name & "' is not a class")
    element -> class.name
proc `->`*(element: HtmlElement, class: CssElement): HtmlElement =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    result = element
    result -> class


proc `->`*(element: var HtmlElement, classes: seq[string]) =
    ## Sugar for class assignment
    for class in classes:
        element -> class
proc `->`*(element: HtmlElement, classes: seq[string]): HtmlElement =
    ## Sugar for class assignment
    result = element
    result -> classes

proc `->`*(element: var HtmlElement, classes: seq[CssElement]) =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    for class in classes:
        element -> class
proc `->`*(element: HtmlElement, classes: seq[CssElement]): HtmlElement =
    ## Sugar for class assignment, raises `ValueError` when passed `CssElement` is not a class
    result = element
    result -> classes


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

template attrStyle*(element: HtmlElement, attributes: seq[CssAttribute]): untyped {.deprecated: "use `addStyle` instead".} = element.addStyle(attributes)
template attrStyle*(element: HtmlElement, attributes: varargs[CssAttribute]): untyped {.deprecated: "use `addStyle` instead".} = element.addStyle(attributes)


proc join*(elements: seq[HtmlElement], sep: HtmlElement): seq[HtmlElement] =
    ## Joins a list of `HtmlElement`s with a `HtmlElement` separator
    for i, element in elements:
        result.add element
        if i < elements.len() - 1: result.add sep


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

    assert $header == """<h1 class='center' style='text-align:left;'>Some content</h1>"""

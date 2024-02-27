## Css Generator
## =============
##
## This module generates `CssElement` objects, that can be converted to strings
## and written to disk as a css stylesheet.

import std/[strutils, strformat, tables]
import ./html

type
    CssElement* = object
        name*: string
        properties*: Table[string, string]

    CssStyleSheet* = object
        file*: string
        elements*: seq[CssElement]

    CssAttribute* = array[2, string]


proc newCssElement*(name: string, properties: Table[string, string]): CssElement = CssElement(
    name: name,
    properties: properties
) ## Generic builder for a css element
proc newCssElement*(name: string, properties: seq[array[2, string]]): CssElement =
    ## Generic builder for a css element
    result = CssElement(name: name)
    for i in properties:
        result.properties[$i[0]] = $i[1]
proc newCssElement*(name: string, properties: varargs[array[2, string]]): CssElement =
    ## Generic builder for a css element
    result = CssElement(name: name)
    for i in properties:
        result.properties[i[0]] = i[1]

proc newCssClass*(name: string, properties: Table[string, string]): CssElement = CssElement(
    name: "." & name,
    properties: properties
) ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
proc newCssClass*(name: string, properties: seq[array[2, string]]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = CssElement(name: "." & name)
    for i in properties:
        result.properties[i[0]] = i[1]
proc newCssClass*(name: string, properties: varargs[array[2, string]]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = CssElement(name: "." & name)
    for i in properties:
        result.properties[i[0]] = i[1]

proc newCssStyleSheet*(fileName: string): CssStyleSheet = CssStyleSheet(
    file: fileName
)


proc add*(stylesheet: var CssStyleSheet, element: CssElement) =
    ## Adds a single css element to stylesheet.
    stylesheet.elements.add(element)
proc add*(stylesheet: var CssStyleSheet, elements: seq[CssElement]) =
    ## Adds a sequence of css elements to stylesheet.
    for element in elements:
        stylesheet.add(element)
proc add*(stylesheet: var CssStyleSheet, elements: varargs[CssElement]) =
    ## Adds multiple css elements to stylesheet.
    for element in elements:
        stylesheet.add(element)

proc setClass*(elem: CssElement, class: string): CssElement =
    ## Applies a class to an element or another class
    result = elem
    result.properties[class] = ""
proc setClass*(elem: CssElement, classes: seq[string]): CssElement =
    ## Applies multiple classes to an element or another class
    result = elem.setClass(classes.join(", "))
proc setClass*(elem: CssElement, classes: varargs[string]): CssElement =
    ## Applies multiple classes to an element or another class
    var s: seq[string]
    for i in classes:
        s.add(i)
    result = elem.setClass(s)

proc setStyle*(document: var HtmlDocument, stylesheet: CssStyleSheet) =
    ## Adds a link to the css stylesheet.
    proc attr(name, value: string): HtmlElementAttribute = return newAttribute(name, value)
    document.head.add(HtmlElement(
        tag: "link",
        tagAttributes: @[attr("rel", "stylesheet"), attr("href",
                stylesheet.file)]
    ))

proc classify(name: string): string =
    ## Removes '.' for css classes
    result = name
    if result[0] == '.':
        result = result[1..^1]
proc classify(class: CssElement): string =
    ## Removes '.' for css classes
    class.name.classify()

proc setClass*(element: var HtmlElement, class: string) =
    ## Sets the class of an html element
    element.class = class
proc setClass*(element: var HtmlElement, class: CssElement) =
    ## Sets the class of an html element
    element.setClass(class.classify())
proc setClass*(element: HtmlElement, class: string): HtmlElement =
    ## Sets the class of an html element
    result = element
    result.class = class
proc setClass*(element: HtmlElement, class: CssElement): HtmlElement =
    ## Sets the class of an html element
    result = element.setClass(class.classify())

proc setAttribute*(element: var CssElement, attribute, value: string) =
    ## Sets/Creates a css attribute with a value.
    element.properties[attribute] = value
proc setAttribute*(element: CssElement, attribute, value: string): CssElement =
    ## Sets/Creates a css attribute with a value.
    result = element
    result.setAttribute(attribute, value)

proc `$`*(element: CssElement): string =
    ## Generates css string from CssElement object.
    ##
    ## It is not checked for validity, so be sure to write correct css... :p
    var lines: seq[string]
    lines.add element.name & " {"

    for i, v in element.properties:
        if v != "":
            lines.add(indent(&"{i}: {v};", 4))
        elif i != "":
            lines.add(indent(&"{i};", 4))
        else:
            echo "Warning, empty field in " & element.name & "! Skipping..."

    lines.add "}"
    result = lines.join("\n")
proc `$`*(elements: seq[CssElement]): string =
    ## Converts multiple CssElement objects to css string.
    var cssElements: seq[string]
    for element in elements:
        cssElements.add($element)
    result = cssElements.join("\n\n")

proc `$`*(stylesheet: CssStyleSheet): string =
    ## Converts CssStyleSheet object to css string.
    result = $stylesheet.elements


proc writeFile*(stylesheet: CssStyleSheet) {.raises: [IOError, ValueError].} =
    ## Writes the stylesheet to disk. Operation fails with `IOError`, if `stylesheet.file == ""`.
    if stylesheet.file == "":
        raise IOError.newException("Stylesheet file name is unspecified, cannot write to filesystem")
    stylesheet.file.writeFile($stylesheet)

proc writeFile*(stylesheet: CssStyleSheet, fileName: string) {.raises: [IOError,
        ValueError].} =
    ## Writes the stylesheet to disk with custom file name/path.
    fileName.writeFile($stylesheet)

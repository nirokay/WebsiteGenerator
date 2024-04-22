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
        isClass*: bool = false

    CssStyleSheet* = object
        file*: string
        elements*: seq[CssElement]

    CssAttribute* = array[2, string]


proc newCssElement*(name: string, properties: Table[string, string]): CssElement = CssElement(
    name: name,
    properties: properties
) ## Generic builder for a css element
proc newCssElement*(name: string, properties: seq[CssAttribute]): CssElement =
    ## Generic builder for a css element
    result = CssElement(name: name)
    for i in properties:
        result.properties[$i[0]] = $i[1]
proc newCssElement*(name: string, properties: varargs[CssAttribute]): CssElement =
    ## Generic builder for a css element
    result = CssElement(name: name)
    for i in properties:
        result.properties[i[0]] = i[1]

proc removeDots(name: string): string =
    ## Removes dots in-front tof class names (when also declared as classes)
    result = name
    if not result.startsWith('.'):
        return name
    when name is static[string]:
        {.warn: "CssClass '" & name & "' starts with '.'. Redundant, removing it.".}
    while result.startsWith('.'):
        result.removePrefix('.')

proc newCssClass*(name: string, properties: Table[string, string]): CssElement = CssElement(
    name: name.removeDots(),
    isClass: true,
    properties: properties
) ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)

proc newCssClass*(name: string, properties: seq[CssAttribute]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = CssElement(name: name.removeDots(), isClass: true)
    for i in properties:
        result.properties[i[0]] = i[1]
proc newCssClass*(name: string, properties: varargs[CssAttribute]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = CssElement(name: name.removeDots(), isClass: true)
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

proc setStyle*(document: var HtmlDocument, stylesheet: CssStyleSheet) =
    ## Adds a link to the css stylesheet.
    proc attr(name, value: string): HtmlElementAttribute = return newAttribute(name, value)
    document.head.add(HtmlElement(
        tag: "link",
        tagAttributes: @[
            attr("rel", "stylesheet"),
            attr("href", stylesheet.file)
        ]
    ))


proc setClass*(element: var HtmlElement, class: string) =
    ## Sets the class of an html element
    element.class = class
proc setClass*(element: var HtmlElement, class: CssElement) =
    ## Sets the class of an html element, raises `ValueError` when passed `CssElement` is not a class
    if not class.isClass:
        raise ValueError.newException(&"Applying a not-class '{class.name}' to element '{element.tag}'.")
    element.setClass(class)
proc setClass*(element: HtmlElement, class: string): HtmlElement =
    ## Sets the class of an html element
    result = element
    result.class = class
proc setClass*(element: HtmlElement, class: CssElement): HtmlElement =
    ## Sets the class of an html element
    result = element.setClass(class)

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

    # Element/Class name:
    lines.add (if element.isClass: "." else: "") & element.name & " {"

    # Properties:
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

proc writeFile*(stylesheet: CssStyleSheet, fileName: string) {.raises: [IOError, ValueError].} =
    ## Writes the stylesheet to disk with custom file name/path.
    fileName.writeFile($stylesheet)

## Css Generator
## =============
##
## This module generates `CssElement` objects, that can be converted to strings
## and written to disk as a css stylesheet.

import std/[sequtils, strutils, strformat, tables, algorithm]
import ./html, ./targetDirectory, ../settings

type
    CssSelector* = enum
        selectorGrouping ## Defines an element being a grouping selector (default behaviour)
        selectorClass    ## Defines an element being a parent class
        selectorId       ## Defines an element being an ID selector
        selectorComment  ## Defines an element being a comment (not actually a CSS selector, but used internally)

    CssElement* = object
        name*: string
        properties*: Table[string, string]
        selector*: CssSelector = selectorGrouping

    CssStyleSheet* = object
        file*: string
        elements*: seq[CssElement]

    CssAttribute* = array[2, string]

proc sortAlphabetically(x, y: string): int =
    cmp(x, y)
proc sortAlphabetically(x, y: CssAttribute): int =
    sortAlphabetically(x[0], y[0])

proc isGroupingSelector*(element: CssElement): bool = element.selector == selectorGrouping
proc isClassSelector*(element: CssElement): bool = element.selector == selectorClass
proc isIdSelector*(element: CssElement): bool = element.selector == selectorID
proc isComment*(element: CssElement): bool = element.selector == selectorComment

proc toTable(properties: seq[CssAttribute]): Table[string, string] =
    for property in properties:
        result[property[0]] = property[1]

proc removeChar(name: string, c: char): string =
    ## Removes dots in-front tof class names (when also declared as classes)
    result = name
    if not result.startsWith(c):
        return name
    when name is static[string]:
        {.warn: "Css Selector '" & name & "' starts with '" & $c & "'. Redundant character, removing it.".}
    while result.startsWith(c):
        result.removePrefix(c)
proc removeDots(name: string): string = name.removeChar('.')
proc removeHash(name: string): string = name.removeChar('#')

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
    result = newCssElement(name, properties.toSeq())

proc newCssClass*(name: string, properties: Table[string, string]): CssElement = CssElement(
    name: name.removeDots(),
    selector: selectorClass,
    properties: properties
) ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
proc newCssClass*(name: string, properties: seq[CssAttribute]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = newCssClass(name, properties.toTable())
proc newCssClass*(name: string, properties: varargs[CssAttribute]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = newCssClass(name, properties.toSeq())

proc newCssId*(name: string, properties: Table[string, string]): CssElement = CssElement(
    name: name.removeHash(),
    selector: selectorId,
    properties: properties
) ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
proc newCssId*(name: string, properties: seq[CssAttribute]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = newCssId(name, properties.toTable())
proc newCssId*(name: string, properties: varargs[CssAttribute]): CssElement =
    ## Generic builder for a css class (same as `newCssElement()` but adds a '.' in-front of the name automatically)
    result = newCssId(name, properties.toSeq())


proc add*(stylesheet: var CssStyleSheet, element: CssElement) =
    ## Adds a single css element to stylesheet.
    stylesheet.elements.add(element)
proc add*(stylesheet: var CssStyleSheet, elements: seq[CssElement]) =
    ## Adds a sequence of css elements to stylesheet.
    for element in elements:
        stylesheet.add(element)
proc add*(stylesheet: var CssStyleSheet, elements: varargs[CssElement]) =
    ## Adds multiple css elements to stylesheet.
    stylesheet.add(elements.toSeq())

proc setStylesheet*(document: var HtmlDocument, stylesheet: CssStyleSheet) =
    ## Adds a link to the css stylesheet.
    document.head.add(HtmlElement(
        tag: "link",
        tagAttributes: @[
            attr("rel", "stylesheet"),
            attr("href", stylesheet.file)
        ]
    ))
proc setStyle*(document: var HtmlDocument, stylesheet: CssStyleSheet) {.deprecated: "use `setStylesheet` instead".} =
    ## Adds a link to the css stylesheet
    document.setStylesheet(stylesheet)


proc setClass*(element: var HtmlElement, class: string) =
    ## Sets the class of an html element
    element.tagAttributes.add newAttribute("class", class)
proc setClass*(element: var HtmlElement, class: CssElement) =
    ## Sets the class of an html element, raises `ValueError` when passed `CssElement` is not a class
    if class.isClassSelector():
        raise ValueError.newException(&"Applying a not-class '{class.name}' to element '{element.tag}'.")
    element.setClass(class.name)
proc setClass*(element: HtmlElement, class: string): HtmlElement =
    ## Sets the class of an html element
    result = element
    result.setClass(class)
proc setClass*(element: HtmlElement, class: CssElement): HtmlElement =
    ## Sets the class of an html element
    result = element.setClass(class.name)

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

    if unlikely element.isComment():
        # Css comment:
        let commentLines: seq[string] = element.name.split("\n")
        if commentLines.len() > 1:
            lines.add "/**"
            for line in commentLines:
                lines.add " * " & line
            lines.add "*/"
        else:
            lines.add "/* " & commentLines.join("") & " */"
    else:
        # Css non-comment:
        # Element/Class name:
        lines.add (
            case element.selector:
            of selectorClass: "."
            of selectorId: "#"
            of selectorGrouping: ""
            of selectorComment: "!!!" # Should never be called
        ) & element.name & " {"

        # Properties:
        var sortedProperties: seq[string]
        for name, value in element.properties:
            if value != "":
                sortedProperties.add(indent(&"{name}: {value};", 4))
            elif name != "":
                sortedProperties.add(indent(&"{name};", 4))
            else:
                echo "Warning, empty field in " & element.name & "! Skipping..."
        if websitegeneratorSettings.generation.sortCssProperties: sortedProperties.sort(sortAlphabetically)
        lines &= sortedProperties

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


proc newCssStyleSheet*(fileName: string, rules: varargs[CssElement]): CssStyleSheet =
    ## Creates a new `CssStylesheet`
    result = CssStyleSheet(
        file: fileName
    )
    let newRules: seq[CssElement] = rules.toSeq()
    if newRules.len() != 0: result.add newRules


proc embedStylesheet*(document: var HtmlDocument, stylesheet: CssStyleSheet) =
    ## Embeds the stylesheet into the document `head`
    document.addToHead newHtmlElement("style", $stylesheet).forceClosingTag()
proc embedStylesheet*(document: HtmlDocument, stylesheet: CssStyleSheet): HtmlDocument =
    ## Embeds the stylesheet into the document `head`
    result = document
    result.embedStylesheet(stylesheet)

proc writeFile*(stylesheet: CssStyleSheet) {.raises: [IOError, ValueError].} =
    ## Writes the stylesheet to disk. Operation fails with `ValueError`, if `stylesheet.file == ""`.
    if stylesheet.file == "":
        raise ValueError.newException("Stylesheet file name is unspecified, cannot write to filesystem")
    stylesheet.file.toTargetDirectory().writeFile($stylesheet)

proc writeFile*(stylesheet: CssStyleSheet, fileName: string) {.raises: [IOError].} =
    ## Writes the stylesheet to disk with custom file name/path.
    fileName.toTargetDirectory().writeFile($stylesheet)

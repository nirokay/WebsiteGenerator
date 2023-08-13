import std/[strutils, strformat, tables, os]

type
    CssElement* = object
        name*: string
        properties*: Table[string, string]

    CssStyleSheet* = object
        file*: string
        elements*: seq[CssElement]


proc newCssElement*(name: string, properties: Table[string, string]): CssElement = CssElement(
    name: name,
    properties: properties
)
proc newCssElement*(name: string, properties: seq[string], ignoreCssPairCheck: bool = false): CssElement {.raises: ValueError.} =
    ## Fails with `ValueError`, if `properties.len() mod 2 != 0`.
    ## Can be disabled with `ignoreCssPairCheck = true`, but this might cause crashes
    ## and other unwanted bahaviour.
    if properties.len() mod 2 != 0 and not ignoreCssPairCheck:
        raise ValueError.newException("CssElement '" & name & "' should have pairs for properties!")
    result = CssElement(name: name)
    for i in countup(0, 2):
        if i >= properties.len() - 1: break
        result.properties[properties[i]] = properties[i + 1]

proc newCssStyleSheet*(fileName: string): CssStyleSheet = CssStyleSheet(
    file: fileName
)


proc add*(stylesheet: var CssStyleSheet, element: CssElement) =
    stylesheet.elements.add(element)
proc add*(stylesheet: var CssStyleSheet, elements: seq[CssElement]) =
    for element in elements:
        stylesheet.add(element)


proc `$`*(element: CssElement): string =
    ## Generates css string from CssElement object.
    ##
    ## It is not checked for validity, so be sure to write correct css... :p
    var lines: seq[string]
    lines.add element.name & " {"

    for i, v in element.properties:
        lines.add(indent(&"{i}: {v};", 4))

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

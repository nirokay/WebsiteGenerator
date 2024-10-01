import std/[strutils, strformat, parsecsv, tables]

const targetFile: string = "../../properties.nim"
let
    translationTable: Table[string, string] = toTable {
        "color": "colour",
        "Color": "Colour"
    }
    deprecationTable: Table[string, string] = toTable {
        "clip": "clip-path"
    }
    renameGenerationList: Table[string, string] = toTable {
        "float": "cssFloat"
    }
    doNotGenerateList: seq[string] = @[]

var lines: seq[string] = @[
    "## CSS Properties Module",
    "## =====================",
    "##",
    "## Automatically generated procs for setting and creating a CSS property.",
    "##",
    "## Reference:",
    "## https://www.w3schools.com/cssref/index.php",
    "##",
    "## Html table converted to csv via:",
    "## https://www.convertcsv.com/html-table-to-csv.htm",
    "",
    "import std/[strutils, tables, sequtils]",
    "import generators", #", commons",
    "",
    "proc toJoinedString[T](items: varargs[T]): string =",
    "    result = items.toSeq().join(\" \")",
    "",
    ""
]

proc translate(text: string): string =
    result = text
    for toReplace, replaceWith in translationTable:
        result = result.replace(toReplace, replaceWith)

proc cleanUp(property: string): string =
    var capitalizeNextCharacter: bool = false
    for c in property:
        # if c notin 'a'..'z' or c notin 'A'..'Z'
        case c:
        of '@': result &= "cssAt"
        of '-', '_': discard
        else:
            # Normal character stuff:
            var newCharacter = $c
            if capitalizeNextCharacter:
                newCharacter = newCharacter.toUpper()
                capitalizeNextCharacter = false
            result &= newCharacter

            # Break loop, so the next character is not uppercase:
            continue
        # Loop not exited by normal character:
        capitalizeNextCharacter = true


proc generateNewLinesWith(cleanedProperty, rawProperty, comment: string) =
    # Proc stuff:
    let
        procSetter: string = "set" & cleanedProperty.capitalizeAscii()
        procConstructor: string = cleanedProperty
        procComment: string = &"""the `{rawProperty}` CSS property"""
        comment: string = comment.replace("*", "\\*")
        optionalDeprecation: string = block:
            if rawProperty in deprecationTable: " {.deprecated: \"use `" & deprecationTable[rawProperty] & "` instead\".}"
            else: ""

    # Proc accepted types:
    var allowedTypes: seq[string] = @[
        "string",
        "CssAll",
        "CssVisibility"
    ]
    proc `?`(containsThis, acceptThisType: string) =
        if containsThis in rawProperty.toLower(): allowedTypes.add(acceptThisType)

    "color" ? "CssColour"
    "align" ? "CssContentAlignment"
    "justify" ? "CssItemsAlignment"
    "display" ? "CssDisplay"
    "font" ? "CssFontStyle"

    let acceptedTypes: string = "string" # allowedTypes.join("|") ## TODO: fix weird varargs to seq conversion issues (`Error: cannot instantiate: 'T'`)
    lines &= @[
        &"""proc {procConstructor}*(values: varargs[{acceptedTypes}]): CssAttribute{optionalDeprecation} =""",
        &"""    ## Constructs {procComment}""",
        &"""    ##""",
        &"""    ## {comment}""",
        &"""    result = ["{rawProperty}", values.toJoinedString()]""",
        &"""proc {procSetter}*(element: var CssElement, values: varargs[{acceptedTypes}]){optionalDeprecation} =""",
        &"""    ## Sets {procComment}""",
        &"""    ##""",
        &"""    ## {comment}""",
        &"""    element.properties["{rawProperty}"] = values.toJoinedString()""",
        &"""proc {procSetter}*(element: CssElement, values: varargs[{acceptedTypes}]): CssElement{optionalDeprecation} =""",
        &"""    ## Sets {procComment}""",
        &"""    ##""",
        &"""    ## {comment}""",
        &"""    result = element""",
        &"""    result.properties["{rawProperty}"] = values.toJoinedString()""", # Doubled functionality to prevent the compiler complaining about using deprecated procs
        ""
    ]

# Parse csv stuff:
var p: CsvParser
p.open("properties.csv")
p.readHeaderRow()
while p.readRow():
    var
        property: string
        description: string
    for column in items(p.headers):
        let value: string = p.rowEntry(column)
        case column:
        of "Property name": property = value
        of "Property description": description = value
        else:
            echo &"wtf: column '{column}'"
            quit 1

    if property in doNotGenerateList: continue
    if property in renameGenerationList: property = renameGenerationList[property]

    # Generate property constructor and setters:
    let cleanedProperty: string = property.cleanUp()
    generateNewLinesWith(cleanedProperty, property, description)

    # Translate and generate again, if something changed:
    let translatedCleanedProperty: string = cleanedProperty.translate()
    if translatedCleanedProperty != cleanedProperty:
        generateNewLinesWith(translatedCleanedProperty, property, description)

p.close()

# Write `lines` to file:
targetFile.writeFile(lines.join("\n"))

## Attributes Generator
## ====================
##
## This module automatically generates setters for HTML attributes from parsing a CSV file, so that
## I do not have to type them out manually and when there are news ones from new HTML versions, it
## can be easily extended.

import std/[strutils, strformat, parsecsv, tables]

const targetFile: string = "../../attributes.nim"

var lines: seq[string] = @[
    "## Attributes Module",
    "## =================",
    "##",
    "## Automatically generated procs for setting single HTML attributes",
    "##",
    "## Reference:",
    "## https://www.w3schools.com/tags/ref_attributes.asp",
    "##",
    "## Html table converted to csv via:",
    "## https://www.convertcsv.com/html-table-to-csv.htm",
    "",
    "import generators",
    "",
    ""
]

let
    dontGenerateAtAll: seq[string] = @[ ## Collides with other stuff, or already implemented
        "class"
    ]
    deprecationTable: Table[string, string] = toTable { ## Deprecated or better alternatives available
        "style": "addStyle",
        "align": "CSS",
        "bgcolor": "CSS",
        "border": "CSS",
        "color": "CSS"
    }

# Parse CSV and add lines to `lines`:
var p: CsvParser
p.open("attributes.csv")
p.readHeaderRow()
while p.readRow():
    var
        elementName: string
        procName: string = "set"
        elementsApplicable: string
        docString: string
    # Assign stuff:
    for column in items(p.headers):
        let value: string = p.rowEntry(column)
        case column:
        of "Attribute": elementName = value
        of "Belongs to": elementsApplicable = value
        of "Description": docString = value
        else:
            echo &"wtf: column '{column}'"
            quit 1

    # Skip funky wunky entries:
    if elementName.endsWith('*'): continue
    if elementName in dontGenerateAtAll: continue

    # Generate proc name:
    block `Generating funny proc name!`:
        var capitalizeNext: bool = true
        for c in elementName:
            if c in 'a'..'z' or c in 'A'..'Z':
                let character: string = if capitalizeNext: capitalizeAscii(c & "") else: c & ""
                procName &= character
                capitalizeNext = false
            else:
                capitalizeNext = true

    if elementsApplicable == "Global Attributes":
        elementsApplicable = "all"
    elif elementsApplicable == "All visible elements.":
        elementsApplicable = "all visible"
    elif elementsApplicable == "Not supported in HTML 5.":
        elementsApplicable = "non-HTML5"
    else:
        elementsApplicable = &"`{elementsApplicable}`"

    var deprecationMessage: string = ""
    if deprecationTable.hasKey(elementName):
        deprecationMessage = "{." & &"deprecated: \"use `{deprecationTable[elementName]}` instead\"" & ".}"

    lines &= @[
        &"""proc {procName}*(element: var HtmlElement, value: string = "") {deprecationMessage}=""",
        &"""    ## Sets the `{elementName}` attribute for {elementsApplicable} elements""",
        &"""    element.addattr("{elementName}", value)""",
        &"""proc {procName}*(element: HtmlElement, value: string = ""): HtmlElement {deprecationMessage}=""",
        &"""    ## Sets the `{elementName}` attribute for {elementsApplicable} elements""",
        # &"""    result = element""",
        # &"""    result.{procName}(value)""",
        &"""    result = element.addattr("{elementName}", value)""", #! Duplicated functionality to not get the deprecation warning on compilation
        ""
    ]
p.close()

# Write `lines` as lines to file:
targetFile.writeFile(lines.join("\n"))


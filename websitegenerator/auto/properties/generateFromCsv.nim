import std/[strutils, strformat, parsecsv, tables]

const targetFile: string = "../../properties.nim"
let translationTable: Table[string, string] = toTable {
    "color": "colour",
    "Color": "Colour"
}
var lines: seq[string] = @[
    "## CSS Properties Module",
    "## =====================",
    "##",
    "## Automatically generated procs for setting and creating a CSS ",
    "##",
    "## Reference:",
    "## https://www.w3schools.com/cssref/index.php",
    "##",
    "## Html table converted to csv via:",
    "## https://www.convertcsv.com/html-table-to-csv.htm",
    "",
    "import generators",
    "",
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
p.close()

# Write `lines` to file:
targetFile.writeFile(lines.join("\n"))

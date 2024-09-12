import std/[strutils, strformat, parsecsv]

# Reference:
# https://www.w3schools.com/tags/ref_attributes.asp

# Html table converted to csv via:
# https://www.convertcsv.com/html-table-to-csv.htm


var lines: seq[string] = @[
    "import generators",
    ""
]


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
            echo "wtf"
            quit 1

    # Skip funky wunky entries:
    if elementName.endsWith('*'): continue

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


    lines &= @[
        &"""proc {procName}*(element: var HtmlElement, value: string = "") =""",
        &"""    ## Sets the `{elementName}` attribute for {elementsApplicable} elements""",
        &"""    element.addattr("{elementName}", value)""",
        &"""proc {procName}*(element: HtmlElement, value: string = ""): HtmlElement =""",
        &"""    ## Sets the `{elementName}` attribute for {elementsApplicable} elements""",
        &"""    result = element""",
        &"""    result.{procName}(value)""",
        ""
    ]

p.close()

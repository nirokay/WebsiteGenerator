import std/[unittest]
import websitegenerator


test "Basic conversion":
    check 69.px == "69px"
    check fontStyle($italic) == ["font-style", "italic"]


let cyanAmongUs: string = """among_us {
    color: Cyan;
    font-size: 69em;
}"""
let pinkH1: string = """h1 {
    background-color: Pink;
    color: rgb(69, 69, 69);
    font: 69px Green italic;
}"""

test "Generator - Elements":
    check $newCssElement("among_us",
        colour("Cyan"), fontSize(69.em)
    ) == cyanAmongUs
    check $newCssElement("h1",
        colour(rgb(69, 69, 69)),
        backgroundColour($Pink)
    ).setFont(69.px, $Green, $italic) == pinkH1

let centerClass: string = """.center-class {
    text-align: center;
}"""

test "Generator - Classes":
    check $newCssClass("center-class",
        textAlign("center")
    ) == centerClass

test "Common - Colours":
    check rgb(69, 69, 69) == "rgb(69, 69, 69)"
    check rgba(69, 69, 69, 0.69) == "rgba(69, 69, 69, " & $0.69 & ")" # Floating number rounding be damned: fixes 0.69 being 0.6899999999999999

let htmlDocument: string = """<!DOCTYPE html>
<html>
<head>
    <style>p {
        text-align: center;
    }</style>
</head>
<body>
    <p>Hello world!</p>
</body>
</html>"""
test "Generator - Embedding Stylesheet":
    var
        document: HtmlDocument = newHtmlDocument("sussy.html")
        stylesheet: CssStyleSheet = newCssStyleSheet("styles.css",
            newCssElement("p",
                "text-align" := "center"
            )
        )
    document.add(
        p("Hello world!")
    )
    document.embedStylesheet(stylesheet)
    check $document == htmlDocument

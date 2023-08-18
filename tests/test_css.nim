import std/[unittest, strutils]
import websitegenerator

test "Basic conversion":
    check 69.px == "69px"
    check fontStyle(italic) == ["font-style", "italic"]



let cyanAmongUs: string = """among_us {
    color: Cyan;
    font-size: 69em;
}"""
let pinkH1: string = """h1 {
    color: rgb(69, 69, 69);
    font: 69px Green italic;
    background-color: Pink;
}"""

test "Stringification":
    check $newCssElement("among_us",
        colour("Cyan"), fontSize(69.em)
    ) == cyanAmongUs
    check $newCssElement("h1",
        colour(rgb(69, 69, 69)),
        backgroundColour(Pink)
    ).setFont(69.px, $Green, $italic) == pinkH1


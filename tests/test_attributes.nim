import std/[unittest, strformat]
import websitegenerator

let
    htmlH1: string = "<h1 autofocus lang='urmom lol'>:3</h1>"
    htmlInput: string = "<input autofocus id='important input' name='important input' placeholder='Type here...' type='text' />"
    htmlDocument: string = &"""<!DOCTYPE html lang='en'>
<html lang='de'>
<head>
    <meta charset='utf-8' />
</head>
<body lang='fr'>
    {htmlH1}
    {htmlInput}
</body>
</html>"""
test "Attributes - Assignment and Generation":
    let
        testH1: HtmlElement = h1(":3").setAutofocus().setLang("urmom lol")
        testInput: HtmlElement = input("text", "important input")
            .setAutofocus()
            .setPlaceholder("Type here...")
            .setName("important input")

    check htmlH1 == $testH1
    check htmlInput == $testInput

    var document: HtmlDocument = newHtmlDocument("amongus.html")
    document.addToHead(charset("utf-8"))
    document.add(
        testH1,
        testInput
    )

    document.addAttributeToDoctype(attr("lang", "en"))
    document.addAttributeToHtml(attr("lang", "de"))
    document.addAttributeToBody(attr("lang", "fr"))

    check htmlDocument == $document


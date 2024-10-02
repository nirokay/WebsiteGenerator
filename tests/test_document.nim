import std/[unittest]
import websitegenerator

let someClass: CssElement = ".some-class"{
    "text-decoration" := "underline"
}

let defaultDocumentString: string = """<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
</head>
<body>
    <h1>Header</h1>
    <p>Some text</p>
    <a href='https://nirokay.github.io/nim-docs/websitegenerator/websitegenerator.html'>Documentation</a>
    <p class='some-class'>Finishing words</p>
</body>
</html>"""

var defaultDocument: HtmlDocument = newHtmlDocument("index.html")
test "Create, stringify document":
    defaultDocument.addToHead(
        charset("utf-8")
    )
    defaultDocument.addToBodyEnd(
        p("Finishing words").setClass(someClass)
    )
    defaultDocument.addToBody(
        h1("Header")
    )
    defaultDocument.addToBody(
        p("Some text"),
        a("https://nirokay.github.io/nim-docs/websitegenerator/websitegenerator.html", "Documentation")
    )

    check $defaultDocument == defaultDocumentString


let attributedDocumentString: string = """<!DOCTYPE html>
<html help lang='en'>
<head>
    <meta charset='utf-8' />
</head>
<body lang='urmom' virus='https://virus.download/infect-me'>
    <h1>Header</h1>
    <p>Some text</p>
    <a href='https://nirokay.github.io/nim-docs/websitegenerator/websitegenerator.html'>Documentation</a>
    <p class='some-class'>Finishing words</p>
</body>
</html>"""

var attributedDocument: HtmlDocument = defaultDocument
test "Attributes to <html ... > and <body ... > tags":
    attributedDocument.addAttributesToBody(
        attr("lang", "urmom"),
        attr("virus", "https://virus.download/infect-me")
    )

    attributedDocument.addAttributeToHtml("lang", "en")
    attributedDocument.addAttributeToHtml("help")

    check $attributedDocument == attributedDocumentString

import std/[unittest]
import websitegenerator

let documentString: string = """<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
</head>
<body>
    <h1>Header</h1>
    <p>Some text</p>
    <a href="https://nirokay.github.io/nim-docs/websitegenerator/websitegenerator.html">Documentation</a>
    <p class="some-class">Finishing words</p>
</body>
</html>"""

let someClass: CssElement = ".some-class"{
    "text-decoration" := "underline"
}

test "Create, stringify document":
    var document: HtmlDocument = newHtmlDocument("index.html")
    document.addToHead(
        charset("utf-8")
    )
    document.addToBodyEnd(
        p("Finishing words").setClass(someClass)
    )
    document.addToBody(
        h1("Header")
    )
    document.addToBody(
        p("Some text"),
        a("https://nirokay.github.io/nim-docs/websitegenerator/websitegenerator.html", "Documentation")
    )

    check $document == documentString

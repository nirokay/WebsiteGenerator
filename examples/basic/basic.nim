import websitegenerator

var html: HtmlDocument = newHtmlDocument("basic.html")

html.addToBody(
    h1("Basic webpage"),
    p("This is an example of the most basic webpage!"),
    p("You can even inline " & $b("different tags") & " using the `$` procedure."),

    h2("Using websitegenerator/commons ..."),
    p("... you get some commonly used elements like paragraphs, headers, images, links, etc.")
)

html.writeFile()


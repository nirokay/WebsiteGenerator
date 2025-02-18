import websitegenerator
import styles

var html: HtmlDocument = newHtmlDocument("index.html")

html.add(
    h1("Hello World!"),
    `div`(
        p(
            "Some really important text!" & $br() & "Bla bla bla bla",
            "I reeeaallly like cats! :3"
        ),
        p("Every arg in the " & $code("proc p(text: varargs[string]): HtmlElement = ...") & " proc, is joined by a &lt;br /&gt;"),
        p("Woah, I am centered!!!").setClass(classCenter)
    ),
    `div`(
        p("This " & $code("div") & " has been overridden!")
    ).addStyle(
        "background-color" := $MistyRose,
        "color" := $Black
    )
)

html.setStylesheet(css)
html.writeFile()

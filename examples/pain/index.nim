import std/[strutils]
import websitegenerator

var
    html: HtmlDocument = newHtmlDocument("index.html")
    css: CssStyleSheet = newCssStyleSheet("styles.css")

let
    body: CssElement = newCssElement("body",
        ["color", rgb(0, 255, 0)],
    ).setBackgroundColour($Magenta)

    painful: CssElement = newCssClass("painful",
        ["color", "lime"]
    )

css.add(
    body,
    painful
)

html.setStylesheet(css)

html.addToBody(
    h1("PAIN AND SUFFERING"),
    p("I hope you did not open this page in a dark room..."),

    dialog(open = true, @[
        h1($b("Dialog box")),
        p("very cool! You can only see half of the page now :)")
    ]).setClass(painful),

    p("This is some text that is hidden behind the dialog box!"),

    small(repeat($br(), 50) & "this is horrible...")
)
css.writeFile()
html.writeFile()

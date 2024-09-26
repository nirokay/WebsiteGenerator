import websitegenerator

var
    html: HtmlDocument = newHtmlDocument("basic_with_css.html")
    css: CssStyleSheet = newCssStyleSheet("basic_styles.css")

# Css elements:
let
    cssHeader1: CssElement = newCssElement(
        "h1",
        ["text-align", "center"],
        ["text-decoration", "underline"]
    )
    cssBody: CssElement = newCssElement(
        "body",
        ["background-color", "rgb(23, 25, 33)"],
        ["color", "white"]
    )
    cssCentered: CssElement = newCssClass(
        "center",
        ["text-align", "center"]
    )

# Add css elements to stylesheet:
css.add(cssBody, cssHeader1, cssCentered)

# Link css stylesheet to html (creates a link in the document to the stylesheet)
html.setStyle(css)
html.addToBody(
    h1("Basic webpage with css"),
    p("As you can see, the background is dark and the header is centered and underlined!"),

    h2("This is not centered!"),
    h2("This however is!!").setClass(cssCentered),
    p("This is centered using the `setClass()` procedure and creating a `cssCentered` variable with `newCssClass()`").setClass(cssCentered)
)

css.writeFile()
html.writeFile()


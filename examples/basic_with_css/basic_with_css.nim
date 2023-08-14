import websitegenerator

var
    html: HtmlDocument = newDocument("basic_with_css.html")
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

# Add css elements to stylesheet:
css.add(cssBody, cssHeader1)

# Link css stylesheet to html (creates a link in the document to the stylesheet)
html.setStyle(css)
html.addToBody(
    h1("Basic webpage with css"),
    p("As you can see, the background is dark and the header is centered and underlined!")
)

css.writeFile()
html.writeFile()


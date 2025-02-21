# WebsiteGenerator

## About

**websitegenerator** is a library that lets you generate static HTML and CSS files using Nim code.

## Documentation

See [here](https://nirokay.github.io/nim-docs/websitegenerator/websitegenerator.html) for in-depth
code documentation.

## Use cases

### Static site generation

Generating static sites is the primary focus of **websitegenerator**, especially if you have repetitive layouts
with only the inserted data changing across them.

### On-the-fly generation (for small projects)

You can use procs to template a HTML page or element and respond to HTTP requests with an HTTP-server.
For example [TheDictionary](https://github.com/nirokay/TheDictionary/), my attempt at an urban-dictionary
webserver clone, uses **websitegenerator** to send back data with very little client-side javascript.

## Examples

Some basic examples are located in [the examples directory](./examples/), so you can quickly know, if you want to use
this or not.

Another larger example with explanations is a runnable example viewable in
[the docs](https://nirokay.github.io/nim-docs/websitegenerator/websitegenerator.html)!

List of projects/sites using **websitegenerator**:

* [my homepage](https://nirokay.com/) ([source](https://github.com/src.nirokay.com/))
* [HzgShowAround](https://nirokay.com/HzgShowAround/) ([source](https://github.com/nirokay/HzgShowAround/))
* TheDictionary ([source](https://github.com/nirokay/TheDictionary/))

If you use this software to create a project/website: feel free to create a PR with the edited
`README.md` or message me somewhere, so you project can be included here.

## Flexible syntax

```nim
import websitegenerator

var
    document: HtmlDocument = newHtmlDocument("index.html")
    stylesheet: CssStyleSheet = newCssStyleSheet("styles.css")

# CSS: --------------------------------
stylesheet.add(
    # CSS-like (sugar) syntax:
    "h1"{
        "text-align" := "center"
    },
    # Funky syntax:
    newCssElement("p",
        ["color", $Red]
    ),
    # Semi-funky syntax:
    newCssClass("some-class",
        color(rgb(69, 69, 69)),
        backgroundColor($BlueViolet)
    ),
    # Can be used together (but why would you want that?):
    ".another-class"{
        textAlign("center"),
        "color" := $Black,
        ["background-color", $White]
    }
)
stylesheet.writeFile() # Writes file to disk


# HTML: -------------------------------
document.setStylesheet(stylesheet) # Adds "styles.css" to HTML head
document.addToHead(
    title("Crazy Page!")
)

document.add( # `document.add` and `document.addToBody` are equivalent
    h1("Hello world!"),
    newHtmlElement("p", "This is some text"),
    p(
        "Elements are joined with " & $code(escapeHtmlText "<br />") & " in " & $code("p") & " tags.",
        "Every newline\nas well!"
    ),
    img("image.png", "Could not load image"), # Some procs have attributes available as args
    p("More text").addattr("id", "id-more-text"), # But you can add attributes manually if needed
    p("Ugly block")
        .setId("id-ugly-block") # Procs for HTML attributes also available
        .addStyle( # Inline CSS is supported
            "color" := $White
        )
)

document.writeFile() # Writes file to disk
```

## Installation

`nimble install websitegenerator`

## Licence

This projects codebase is distributed under the [GPL-3.0 licence](https://www.gnu.org/licenses/gpl-3.0.html).
However you may use any output from your project (generated HTML and CSS files) according to the MIT licence - basically
without any limitations on source distribution.

## Websitegenerator
## ================
##
## `websitegenerator` is a basic static html/css generator.
##
## Use cases:
## ----------
##
## * Create templates for repetitive HTML and call them simply with code and parameters
## * On-the-fly HTML/CSS generation for HTTP servers (Note: generating and stringifying is pretty expensive and unoptimised)
##
## Writing HTML and CSS is very close to actually writing it, so no steep learning curve is required
## for learning this library.
##
## Examples:
## ---------

import websitegenerator/[generators, commons, sugar]
export generators, commons, sugar

var html: HtmlDocument = newHtmlDocument("index.html") # creating empty document

# Adding to the HTML head:
html.addToHead(
    charset("utf-8") # will generate `<meta charset="utf-8" />`
)

# Adding to HTML body:
# Note: `html.add()` and `html.addToBody()` are equivalent
html.add(
    article(
        h1("Important article"),
        p("Some very crucial stuff is happening.\nRead with caution!"), # `\n` will be replaced with `<br />` here automatically
    )
)
article
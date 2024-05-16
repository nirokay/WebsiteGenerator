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

import websitegenerator/[generators, commons, sugar, mimetypes]
export generators, commons, sugar, mimetypes


runnableExamples:
    # Css:
    # ----
    var css: CssStyleSheet = newCssStyleSheet("styles.css")

    const
        # Sugar css class:
        classCenter: CssElement = ".center-everything"{
            "margin" := "auto",
            "text-align" := "center"
        } # this is a class because the name starts with a `.`

        # Normal css class:
        classArticleBox: CssElement = newCssClass("article-box",
            # no need here for the `.`, because it is already declaring a class
            backgroundColour(rgb(69, 69, 69)),
            colour(White),
            border("10px")
        )

    # Both are classes:
    assert classArticleBox.isClass
    assert classCenter.isClass

    css.add(
        # Sugar css element:
        "h1, h2, h3, h4, h5, h6"{
            "text-decoration" := "underline"
        },

        # Classes from above:
        # you need to add them here, so they generate in the `styles.css`
        classCenter,
        classArticleBox
    )


    # Html:
    # -----

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
            p("Some very crucial stuff is happening.\nRead with caution!")
            # `\n` will be replaced with `<br />` in `p(...)` automatically
        ),
        footer("Thank you for reading")
    )

    # Add stylesheet to html:
    html.setStyle(css)

    # Sets the target directory:
    setTargetDirectory(".output")

    # Write css and html to disk:
    css.writeFile()
    html.writeFile()

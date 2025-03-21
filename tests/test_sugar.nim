import std/[unittest]
import websitegenerator

let headerCssBracket: CssElement = "h1"{
    "text-decoration" := "underline"
}
let headerCssString: string = """h1 {
    text-decoration: underline;
}"""

test "CssElement constructor":
    check $headerCssBracket == headerCssString


let imgHtmlBracket: HtmlElement = "img"[
    "src" -= "path/to/image.png",
    "alt" -= "Sorry, no images for you"
]
let imgHtmlString: string = """<img alt='Sorry, no images for you' src='path/to/image.png' />"""

test "HtmlElement constructor":
    check $imgHtmlBracket == imgHtmlString


var pEmpty: HtmlElement = "p"[]

test "HtmlElement content assignment":
    pEmpty => "Content!"
    check $pEmpty == "<p>Content!</p>"

    pEmpty.add br()
    pEmpty &=> @[
        "Hello world",
        "Testing"
    ]
    check $pEmpty == "<p>Content!<br />Hello world<br />Testing</p>"

test "Style attribute":
    var element: HtmlElement = p("Some text").addStyle(
        "text-align" := "center"
    )
    check $element == """<p style='text-align:center;'>Some text</p>"""

test "Joining sequence of elements with separator":
    let
        elements: seq[HtmlElement] = @[
            a("https://nirokay.com/", "Home"),
            a("https://nirokay.com/projects.html", "Links"),
            a("https://nirokay.com/games.html", "Projects"),
            a("https://nirokay.com/games.html", "Games")
        ]
        joinedElements: seq[HtmlElement] = @[
            a("https://nirokay.com/", "Home"),
            br(),
            a("https://nirokay.com/projects.html", "Links"),
            br(),
            a("https://nirokay.com/games.html", "Projects"),
            br(),
            a("https://nirokay.com/games.html", "Games")
        ]
    check $elements.join(br()) == $joinedElements

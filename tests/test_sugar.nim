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
    "src" => "path/to/image.png",
    "alt" => "Sorry, no images for you"
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

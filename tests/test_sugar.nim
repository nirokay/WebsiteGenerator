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
let imgHtmlString: string = """<img src="path/to/image.png" alt="Sorry, no images for you" />"""

test "HtmlElement constructor":
    check $imgHtmlBracket == imgHtmlString


var pEmpty: HtmlElement = "p"[]

test "HtmlElement content assignment":
    pEmpty => "Content!"
    check $pEmpty == "<p>Content!</p>"


test "Style attribute":
    var element: HtmlElement = p("Some text").attrStyle(
        "text-align" := "center"
    )
    check $element == """<p style="text-align:center;">Some text</p>"""

import std/[unittest]
import websitegenerator

test "Generator - Assembling new html elements":
    check $newHtmlElement("sussy", "baka") == "<sussy>baka</sussy>"

test "Generator - Converting basic elements to html string":
    check $h1("Hello world!") == "<h1>Hello world!</h1>"
    check $p("This is a paragraph") == "<p>This is a paragraph</p>"
    check $img("/some/path/to/image", "Oops, could not load...") == """<img alt='Oops, could not load...' src='/some/path/to/image' />"""

let simpleVideoTag: string = """<video controls height='69' width='69'><source src='path/to/video.mp4' type='video/mp4' /> No video :( </video>"""
let complexVideoTag: string = """<video height='420' width='69'><source src='video.mp4' type='video/mp4' />
<source src='video.ogg' type='video/ogg' /> Nope videos </video>"""

test "Generator - Converting more complicated elements to html string":
    let
        simple: HtmlElement = video(
            69, "69",
            source("path/to/video.mp4", "video/mp4"),
            "No video :("
        )
        complex: HtmlElement = video(
            "69", 420,
            @[source("video.mp4", "video/mp4"), source("video.ogg", "video/ogg")],
            "Nope videos",
            false
        )
    check $simple == simpleVideoTag
    check $complex == complexVideoTag

    check $newHtmlElement("e", "this is content").setClass("test").add(
        attr("attribute"),
        attr("attribute-with-stuff", "stuff")
    ) == "<e attribute attribute-with-stuff='stuff' class='test'>this is content</e>"

let styledHeaderTag: string = """<h1 class='urmom' style='font-weight:bold; text-align:center;'>Hello World!</h1>"""
test "Generator - Combining tags with the same name into one":
    let headerElement: HtmlElement = h1("Hello World!").setClass("urmom").addStyle(
        "text-align" := "center"
    ).addStyle(
        "font-weight" := "bold"
    )
    check $headerElement == styledHeaderTag


test "Common - Common HTML elements":
    check $h1("hello world!") == "<h1>hello world!</h1>"
    check $p("centered text").addattr("class", "center") == "<p class='center'>centered text</p>"


let dummyDiv: string = """<div><button onclick='deleteSystem32();'>click me</button>
<button onclick='console.log(\'only joking\');'>i am evil</button></div>"""

test "Divs - Common HTML elements":
    let
        friendly: HtmlElement = button("click me", "deleteSystem32();")
        evil: HtmlElement = button("i am evil", "console.log('only joking');")
    check $`div`(
        friendly, evil
    ) == dummyDiv
    check $`div`(@[
        friendly, evil
    ]) == dummyDiv

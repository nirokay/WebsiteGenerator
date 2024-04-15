import std/[unittest]
import websitegenerator

test "Generator - Assembling new html elements":
    check $newHtmlElement("sussy", "baka") == "<sussy>baka</sussy>"

test "Generator - Converting basic elements to html string":
    check $h1("Hello world!") == "<h1>Hello world!</h1>"
    check $p("This is a paragraph") == "<p>This is a paragraph</p>"
    check $img("/some/path/to/image", "Oops, could not load...") == """<img src="/some/path/to/image" alt="Oops, could not load..." />"""

let simpleVideoTag: string = """<video width="69" height="69" controls><source src="path/to/video.mp4" type="video/mp4" /> No video :( </video>"""
let complexVideoTag: string = """<video width="69" height="420"><source src="video.mp4" type="video/mp4" />
<source src="video.ogg" type="video/ogg" /> Nope videos </video>"""

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
    ) == "<e attribute attribute-with-stuff=\"stuff\" class=\"test\">this is content</e>"

test "Common - Common HTML elements":
    check $h1("hello world!") == "<h1>hello world!</h1>"
    check $p("centered text").addattr("class", "center") == "<p class=\"center\">centered text</p>"

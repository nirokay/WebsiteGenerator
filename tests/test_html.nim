import std/[unittest, strutils]
import websitegenerator

test "Generator - Assembling new html elements":
    check $newHtmlElement("sussy", "baka") == "<sussy>baka</sussy>"
    check $newHtmlElement("you", "are", "a", "sussy", "baka") == "<you>are<br />a<br />sussy<br />baka</you>"
    check $newHtmlElement("progress", 7) == "<progress>7</progress>"

test "Generator - Converting basic elements to html string":
    check $h1("Hello world!") == "<h1>Hello world!</h1>"
    check $p("This is a paragraph") == "<p>This is a paragraph</p>"
    check $img("/some/path/to/image", "Oops, could not load...") == """<img alt='Oops, could not load...' src='/some/path/to/image' />"""

let simpleVideoTag: string = """<video controls height='69' width='69'><source src='path/to/video.mp4' type='video/mp4' />No video :(</video>"""
let complexVideoTag: string = """<video height='420' width='69'><source src='video.mp4' type='video/mp4' /><source src='video.ogg' type='video/ogg' />Nope videos</video>"""

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


let dummyDiv: string = """<div><button onclick='deleteSystem32();'>click me</button><button onclick='console.log(&#39;only joking&#39;);'>i am evil</button></div>"""

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

test "Children - Adding":
    var element: HtmlElement = `div`(
        h1("Hello world")
    )
    element.add(
        p("Some text"),
        summary("Did you really not read TWO WORDS???"),
        footer("Thank you for reading :3")
    )
    check element.getChildren().len() == 4

test "(Un-)Ordered lists":
    let
        uList: HtmlElement = unorderedList(@["eggs", "milk", "bacon"])
        oList: HtmlElement = orderedList(@["eggs", "milk", "bacon"])
    check $uList == "<ul><li>eggs</li><li>milk</li><li>bacon</li></ul>"
    check $oList == "<ol><li>eggs</li><li>milk</li><li>bacon</li></ol>"

test "Self-closing tags: not generating content":
    let element: HtmlElement = img("img.png", "oops").add(rawText"Hello world!")
    check $element == "<img alt='oops' src='img.png' />"

test "Not self-closing tags: generating closing tag":
    let element: HtmlElement = newHtmlElement("p")
    check $element == "<p></p>"

import std/[unittest]
import websitegenerator

test "Converting to html string":
    check $h1("Hello world!") == "<h1>Hello world!</h1>"
    check $p("This is a paragraph") == "<p>This is a paragraph</p>"
    check $img("/some/path/to/image", "Oops, could not load...") == """<img src="/some/path/to/image" alt="Oops, could not load...">"""
    check $video(
        69, "69",
        source("path/to/video.mp4", "video/mp4"),
        "No video :("
    ) == """<video width="69" height="69" controls><source src="path/to/video.mp4" type="video/mp4"> No video :( </video>"""
    check $video(
        "69", 420,
        @[source("video.mp4", "video/mp4"), source("video.ogg", "video/ogg")],
        "Nope videos",
        false
    ) == """<video width="69" height="420"><source src="video.mp4" type="video/mp4">""" & "\n" & """<source src="video.ogg" type="video/ogg"> Nope videos </video>"""

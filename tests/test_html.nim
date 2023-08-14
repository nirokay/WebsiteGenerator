import std/[unittest]
import websitegenerator

test "Converting to html string":
    check $h1("Hello world!") == "<h1>Hello world!</h1>"
    check $p("This is a paragraph") == "<p>This is a paragraph</p>"
    check $img("/some/path/to/image", "Oops, could not load...") == "<img src=\"/some/path/to/image\" alt=\"Oops, could not load...\">"

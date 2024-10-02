import std/[unittest]
import websitegenerator

var document: HtmlDocument = newHtmlDocument("sussy.baka")

document.add(
    h1("Among us").setId("find-me"),
    p("Among us sussy baka is a game and so on, imagine some crazy info here").setClass("p-my-ass").setClass("text-class"),
    `div`(
        hr(),
        h2("More stuff"),
        `div`(
            q("https://virus.com/download/setup.exe", "yes yes game :)").setClass("text-class").setClass("something-something")
        ),
        p("hi!!!").setClass("text-class").setClass("testClass"),
        hr()
    )
)


test "Finding by id":
    let elements: seq[HtmlElement] = document.getElementsById("find-me")
    echo elements
    check elements.len() == 1
    check $elements[0] == "<h1 id='find-me'>Among us</h1>"

test "Finding by class":
    let elements: seq[HtmlElement] = document.getElementsByClass("text-class")
    echo elements
    check elements.len() == 3
    check elements[0].isTag("p")

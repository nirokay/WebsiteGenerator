import std/[unittest]
import websitegenerator

var document: HtmlDocument = newHtmlDocument("sussy.baka")

document.add(
    h1("Among us").setId("find-me"),
    p("Among us sussy baka is a game and so on, imagine some crazy info here").setClass("p-my-ass").setClass("text-class").setTitle("some text lol"),
    `div`(
        hr(),
        h2("More stuff"),
        `div`(
            q("https://virus.com/download/setup.exe", "yes yes game :)").setClass("text-class").setClass("something-something").setTitle("an important quote!")
        ),
        p("hi!!!").setClass("text-class").setClass("test-class").setTitle("SUPER important text!!!"),
        hr().setTitle("aaaaaaaaaaaaaaaAAAAAAAAAAAAAAAAAA")
    )
)


test "DOM - Searching by ID":
    let elements: seq[HtmlElement] = document.getElementsById("find-me")
    check elements.len() == 1
    check $elements[0] == "<h1 id='find-me'>Among us</h1>"

test "DOM - Searching by Class":
    let elements: seq[HtmlElement] = document.getElementsByClass("text-class")
    check elements.len() == 3
    check elements[0].isTag("p")

test "DOM - Searching by only field name":
    let elements: seq[HtmlElement] = document.getElementsBy("title", MatchOnlyFieldName)
    check elements.len() == 4

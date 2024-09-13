import std/[unittest]
import websitegenerator

let
    htmlH1: string = """<h1 lang="urmom lol" autofocus>:3</h1>"""
    htmlInput: string = """<input autofocus type="text" id="important input" placeholder="Type here..." name="important input" />"""

test "Attributes - Assignment and Generation":
    let
        testH1: HtmlElement = h1(":3").setAutofocus().setLang("urmom lol")
        testInput: HtmlElement = input("text", "important input")
            .setPlaceholder("Type here...")
            .setName("important input")
            .setAutofocus()

    check htmlH1 == $testH1
    check htmlInput == $testInput

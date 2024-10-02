import std/[unittest]
import websitegenerator

let
    htmlH1: string = "<h1 autofocus lang='urmom lol'>:3</h1>"
    htmlInput: string = "<input autofocus id='important input' name='important input' placeholder='Type here...' type='text' />"

test "Attributes - Assignment and Generation":
    let
        testH1: HtmlElement = h1(":3").setAutofocus().setLang("urmom lol")
        testInput: HtmlElement = input("text", "important input")
            .setAutofocus()
            .setPlaceholder("Type here...")
            .setName("important input")

    check htmlH1 == $testH1
    check htmlInput == $testInput

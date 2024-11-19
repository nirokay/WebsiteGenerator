import std/[unittest]
import websitegenerator

test "CSS - Class selector":
    let class: CssElement = newCssClass("red-text",
        "color" := "red"
    )
    check $class == """.red-text {
    color: red;
}"""

test "CSS - ID selector":
    let id: CssElement = newCssId("important-item",
        "color" := "red"
    )
    check $id == """#important-item {
    color: red;
}"""

test "CSS - Comment":
    var comment: CssElement = newCssElement("among us")
    comment.selector = selectorComment
    check $comment == "/* among us */"

import ../generators

proc over(name, value: string): HtmlElementOverride = return newOverride(name, value)

proc image*(source: string, alt: string): HtmlElement = newElement(
    "img",
    @[over("source", source), over("alt", alt)]
) ## Embeded image

proc header(content: string, number: int): HtmlElement = newElement(
    "h" & $number, content
)

proc h1*(text: string, class: string = ""): HtmlElement = header(text, 1) ## Highest header
proc h2*(text: string, class: string = ""): HtmlElement = header(text, 2) ## Second header

proc p*(text: string, class: string = ""): HtmlElement = newElement("p", text) ## Paragraph

proc `div`*(elements: seq[HtmlElement], class: string = ""): HtmlElement = newElement("div", $elements)

proc `div`*(class: string = "", elements: varargs[HtmlElement]): HtmlElement =
    var temp: seq[HtmlElement]
    for element in elements:
        temp.add(element)
    newElement("div", $temp)

proc b*(text: string, class: string = ""): HtmlElement = newElement("b", text) ## Bold / "Bring attention to"

proc text*(text: string, class: string = ""): HtmlElement = newElement("", text) ## Raw text

proc link*(href: string, class: string = ""): HtmlElement = newElement("a", @[
    over("href", href)
])
proc link*(rel, href: string, class: string = ""): HtmlElement = newElement("link", @[
    over("rel", rel), over("href", href)
])
proc link*(rel, `type`, href: string, class: string = ""): HtmlElement = newElement("link", @[
    over("rel", rel), over("type", `type`), over("href", href)
])




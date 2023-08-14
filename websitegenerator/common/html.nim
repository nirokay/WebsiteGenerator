import ../generators

proc over(name, value: string): HtmlElementOverride = return newOverride(name, value)

proc image*(source: string, alt: string): HtmlElement = newElement(
    "img",
    @[over("source", source), over("alt", alt)]
) ## Embeded image

proc header(content: string, number: int): HtmlElement = newElement(
    "h" & $number, content
)

proc h1*(text: string): HtmlElement = header(text, 1) ## Highest header
proc h2*(text: string): HtmlElement = header(text, 2) ## Second header

proc p*(text: string): HtmlElement = newElement("p", text) ## Paragraph

proc `div`*(elements: seq[HtmlElement]): HtmlElement = newElement("div", $elements)

proc `div`*(elements: varargs[HtmlElement]): HtmlElement =
    var temp: seq[HtmlElement]
    for element in elements:
        temp.add(element)
    newElement("div", $temp)

proc b*(text: string): HtmlElement = newElement("b", text) ## Bold / "Bring attention to"

proc a*(href, content: string): HtmlElement = newElement("a", @[over("href", href)], content)

proc text*(text: string): HtmlElement = newElement("", text) ## Raw text

proc link*(rel, href: string): HtmlElement = newElement("link", @[
    over("rel", rel), over("href", href)
])
proc link*(rel, `type`, href: string): HtmlElement = newElement("link", @[
    over("rel", rel), over("type", `type`), over("href", href)
])




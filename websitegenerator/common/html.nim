import ../generators

proc over(name, value: string): HtmlElementOverride = return newOverride(name, value) ## Shortcut for `newOverride()`
proc newHeader(content: string, number: int): HtmlElement = newElement(
    "h" & $number, content
) ## Generic builder for header

proc img*(src: string, alt: string): HtmlElement = newElement(
    "img",
    @[over("src", src), over("alt", alt)]
) ## Embeded image
proc image*(source: string, alt: string): HtmlElement {.deprecated: "Use `img` instead.".} = img(source, alt) ## Embeded image

proc h1*(text: string): HtmlElement = newHeader(text, 1) ## Html header 1
proc h2*(text: string): HtmlElement = newHeader(text, 2) ## Html header 2
proc h3*(text: string): HtmlElement = newHeader(text, 3) ## Html header 3
proc h4*(text: string): HtmlElement = newHeader(text, 4) ## Html header 4
proc h5*(text: string): HtmlElement = newHeader(text, 5) ## Html header 5
proc h6*(text: string): HtmlElement = newHeader(text, 6) ## Html header 6

proc p*(text: string): HtmlElement = newElement("p", text) ## Paragraph
proc a*(href, content: string): HtmlElement = newElement("a", @[over("href", href)], content)
proc b*(text: string): HtmlElement = newElement("b", text) ## Bold / "Bring attention to"
proc text*(text: string): HtmlElement = newElement("", text) ## Raw text

proc `div`*(elements: seq[HtmlElement]): HtmlElement = newElement("div", $elements) ## Constructer for div
proc `div`*(elements: varargs[HtmlElement]): HtmlElement =
    ## Constructer for div
    var temp: seq[HtmlElement]
    for element in elements:
        temp.add(element)
    newElement("div", $temp)

proc link*(rel, href: string): HtmlElement = newElement("link",
    over("rel", rel), over("href", href)
) ## Link for html head
proc link*(rel, `type`, href: string): HtmlElement = newElement("link",
    over("rel", rel), over("type", `type`), over("href", href)
) ## Link for html head

proc stylesheet*(href: string): HtmlElement = link("stylesheet", href) ## Stylesheet for html head

proc icon*(href, `type`: string): HtmlElement = link("icon", `type`, href) ## Favicon for html head
proc icon*(href, `type`, sizes: string): HtmlElement = newElement("link",
    over("rel", "icon"), over("type", `type`), over("sizes", sizes), over("href", href)
) ## Favicon for html head

proc meta*(data: seq[array[2, string]]): HtmlElement =
    ## Generic builder for meta head
    var overrides: seq[HtmlElementOverride]
    for override in data:
        overrides.add(over(override[0], override[1]))
    result = newElement("meta", overrides)

proc title*(text: string): HtmlElement = newElement("title", text) ## Title for html head
proc description*(content: string): HtmlElement = meta(@[
    ["name", "description"], ["content", content]
]) ## Description for html head
proc viewport*(content: string): HtmlElement = meta(@[
    ["name", "viewport"], ["content", content]
]) ## Viewport for html head
proc charset*(charset: string): HtmlElement = meta(@[
    ["charset", charset]
]) ## Charset for html head

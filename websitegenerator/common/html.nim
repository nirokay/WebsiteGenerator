import ../generators

proc over(name, value: string): HtmlElementAttribute = return newAttribute(name, value) ## Shortcut for `newAttribute()`
proc newHeader(content: string, number: int): HtmlElement = newElement(
    "h" & $number, content
) ## Generic builder for header
proc videoBuilder(video: HtmlElement, sources: seq[HtmlElement], alt: string): HtmlElement =
    ## Generic builder for video elements
    result = video
    result.content = $sources & " " & alt & " "

proc source*(src, `type`: string): HtmlElement = newElement("source",
    over("src", src), over("type", `type`)
) ## Source element

proc video*(width, height: string | SomeInteger, sources: seq[HtmlElement], alt: string, controls: bool = true): HtmlElement =
    ## Video element with multiple sources
    result = newElement("video", over("width", $width), over("height", $height))
    if controls:
        result.tagAttributes.add(newAttribute("controls"))
    return result.videoBuilder(sources, alt)
proc video*(width, height: string | SomeInteger, source: HtmlElement, alt: string, controls: bool = true): HtmlElement =
    ## Video element with single source
    result = video(width, height, @[source], alt, controls)


proc img*(src: string, alt: string): HtmlElement = newElement(
    "img",
    @[over("src", src), over("alt", alt)]
) ## Image element
proc image*(source: string, alt: string): HtmlElement {.deprecated: "Use `img` instead.".} = img(source, alt) ## Image element

proc header*(content: string): HtmlElement = newElement("header", content) ## Header element
proc article*(content: string): HtmlElement = newElement("article", content) ## Article element
proc footer*(content: string): HtmlElement = newElement("footer", content) ## Footer element
proc main*(content: string): HtmlElement = newElement("main", content) ## Main element

proc h1*(text: string): HtmlElement = newHeader(text, 1) ## Html header 1 element
proc h2*(text: string): HtmlElement = newHeader(text, 2) ## Html header 2 element
proc h3*(text: string): HtmlElement = newHeader(text, 3) ## Html header 3 element
proc h4*(text: string): HtmlElement = newHeader(text, 4) ## Html header 4 element
proc h5*(text: string): HtmlElement = newHeader(text, 5) ## Html header 5 element
proc h6*(text: string): HtmlElement = newHeader(text, 6) ## Html header 6 element

proc p*(text: string): HtmlElement = newElement("p", text) ## Paragraph element
proc q*(text: string): HtmlElement = newElement("q", text) ## Quote element
proc a*(href, content: string): HtmlElement = newElement("a", @[over("href", href)], content) ## Anchor element
proc b*(text: string): HtmlElement = newElement("b", text) ## Bold element
proc text*(text: string): HtmlElement = newElement("", text) ## Raw text
proc abbr*(text: string): HtmlElement = newElement("abbr", text) ## Abbreviation element


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
    var attributes: seq[HtmlElementAttribute]
    for attribute in data:
        attributes.add(over(attribute[0], attribute[1]))
    result = newElement("meta", attributes)

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

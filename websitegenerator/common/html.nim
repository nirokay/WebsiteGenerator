import ../generators

proc over(name, value: string): HtmlElementOverride = return newOverride(name, value) ## Shortcut for `newOverride()`
proc newHeader(content: string, number: int): HtmlElement = newElement(
    "h" & $number, content
) ## Generic builder for header

proc source*(src, `type`: string): HtmlElement = newElement("source",
    over("src", src), over("type", `type`)
) ## Source element

#[
<video width="320" height="240" controls>
    <source src="movie.mp4" type="video/mp4">
    <source src="movie.ogg" type="video/ogg">
    Your browser does not support the video tag.
</video>

<video width="69" height="69" controls>
    <source src="path/to/video.mp4" type="video/mp4">
    No video :(
</video>
]#
proc videoBuilder(video: HtmlElement, sources: seq[HtmlElement], alt: string): HtmlElement =
    result = video
    result.content = $sources & " " & alt & " "
proc video*(width, height: string | SomeInteger, sources: seq[HtmlElement], alt: string, controls: bool = true): HtmlElement =
    ## Video element with multiple sources
    result = newElement("video", over("width", $width), over("height", $height))
    if controls:
        result.tagOverrides.add(newOverride("controls"))
    return result.videoBuilder(sources, alt)
proc video*(width, height: string | SomeInteger, source: HtmlElement, alt: string, controls: bool = true): HtmlElement =
    ## Video element with single source
    result = video(width, height, @[source], alt, controls)


#[proc video*(width, height: string | SomeInteger, sources: seq[HtmlElement], alt: string, controls: bool = true): HtmlElement =
    let src: string = $sources & "\n" & alt
    result = video(width, height, )]#

proc img*(src: string, alt: string): HtmlElement = newElement(
    "img",
    @[over("src", src), over("alt", alt)]
) ## Image element
proc image*(source: string, alt: string): HtmlElement {.deprecated: "Use `img` instead.".} = img(source, alt) ## Image element

proc header*(content: string): HtmlElement = newElement("header", content) ## Header element
proc article*(content: string): HtmlElement = newElement("article", content) ## Article element
proc footer*(content: string): HtmlElement = newElement("footer", content) ## Footer element
proc main*(content: string): HtmlElement = newElement("main", content) ## Main element

proc h1*(text: string): HtmlElement = newHeader(text, 1) ## Html header 1
proc h2*(text: string): HtmlElement = newHeader(text, 2) ## Html header 2
proc h3*(text: string): HtmlElement = newHeader(text, 3) ## Html header 3
proc h4*(text: string): HtmlElement = newHeader(text, 4) ## Html header 4
proc h5*(text: string): HtmlElement = newHeader(text, 5) ## Html header 5
proc h6*(text: string): HtmlElement = newHeader(text, 6) ## Html header 6

proc p*(text: string): HtmlElement = newElement("p", text) ## Paragraph
proc q*(text: string): HtmlElement = newElement("q", text) ## Quote
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

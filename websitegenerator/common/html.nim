## Common html snippets
## ====================
##
## This is a collection of common html snippets. These are not all of them!
## The purpose of these are to make life easier. You may still need to
## construct some `HtmlElement` objects yourself.

import std/[strutils]
import ../generators

proc newHeader(content: string, number: int): HtmlElement = newElement(
    "h" & $number, content
) ## Generic builder for header
proc videoBuilder(video: HtmlElement, sources: seq[HtmlElement], alt: string): HtmlElement =
    ## Generic builder for video elements
    result = video
    result.content = $sources & " " & alt & " "

proc source*(src, `type`: string): HtmlElement = newElement("source",
    attr("src", src), attr("type", `type`)
) ## Source element

proc video*(width, height: string | SomeInteger, sources: seq[HtmlElement], alt: string, controls: bool = true): HtmlElement =
    ## Video element with multiple sources
    result = newElement("video", attr("width", $width), attr("height", $height))
    if controls:
        result.tagAttributes.add(attr("controls"))
    return result.videoBuilder(sources, alt)
proc video*(width, height: string | SomeInteger, source: HtmlElement, alt: string, controls: bool = true): HtmlElement =
    ## Video element with single source
    result = video(width, height, @[source], alt, controls)
proc track*(src, kind, srclang, label: string): HtmlElement =
    ## Track element (subtitles for video/audio) -> uses .vtt files
    newElement("track", attr("src", src), attr("kind", kind), attr("srclang", srclang), attr("label", label))

proc img*(src: string, alt: string): HtmlElement = newElement(
    "img",
    @[attr("src", src), attr("alt", alt)]
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

proc br*(): HtmlElement = newElement("br", attr("/")) ## Line break element
proc p*(text: string): HtmlElement = newElement("p", text.replace("\n", $br())) ## Paragraph element
proc p*(text: seq[string]): HtmlElement = p(text.join($br()))
proc q*(text: string): HtmlElement = newElement("q", text) ## Quote element
proc a*(href, content: string): HtmlElement = newElement("a", @[attr("href", href)], content) ## Anchor element
proc b*(text: string): HtmlElement = newElement("b", text) ## Bold element
proc i*(text: string): HtmlElement = newElement("i", text) ## Italic / "Alternative style"
proc s*(text: string): HtmlElement = newElement("s", text) ## Strike-Through element
proc u*(text: string): HtmlElement = newElement("u", text) ## "Mark up misspelled words" tag
proc em*(text: string): HtmlElement = newElement("em", text) ## Emphasis element
proc `var`*(text: string): HtmlElement = newElement("var", text) ## Variable element
proc small*(text: string): HtmlElement = newElement("small", text) ## Small text element
proc strong*(text: string): HtmlElement = newElement("strong", text) ## Strong element
proc mark*(text: string): HtmlElement = newElement("mark", text) ## Marked text element
proc pre*(text: string): HtmlElement = newElement("pre", text) ## Pre element
proc sub*(text: string): HtmlElement = newElement("sub", text) ## Subscript text element
proc sup*(text: string): HtmlElement = newElement("sup", text) ## Superscript text element
proc hr*(): HtmlElement = newElement("hr") ## Horizontal line element
proc wbr*(): HtmlElement = newElement("wbr") ## Word Break Opportunity element

proc meter*(min, max: SomeInteger|string, text: string = " "): HtmlElement = newElement("meter",
    @[attr("min", $min), attr("max", $max)], text
) ## Empty Meter / Gauge element
proc meter*(min, max, value: SomeInteger|string, text: string = " "): HtmlElement =
    ## Meter / Gauge element with value
    meter(min, max, text).attr(attr("value", value))
proc meter*(id: string, min, max, value: SomeInteger|string, text: string): HtmlElement =
    ## Meter / Gauge element with id
    meter(min, max, value, text).attr(attr("id", id))
proc meter*(value: SomeFloat|string, text: string = " "): HtmlElement =
    ## Meter / Gauge element with percentage
    newElement("meter", @[attr("value", $value)], text)
proc meter*(id: string, value: SomeFloat|string, text: string = " "): HtmlElement =
    ## Meter / Gauge element with percentage and id
    meter(value, text).attr(attr("id", id))

proc section*(text: string): HtmlElement = newElement("section", text) ## Section element
proc section*(elements: seq[HtmlElement]): HtmlElement = section($elements) ## Section element
proc summary*(text: string): HtmlElement = newElement("summary", text) ## Summary element
proc code*(text: string): HtmlElement = newElement("code", text) ## Inline code element
proc text*(text: string): HtmlElement = newElement("", text) ## Raw text
proc abbr*(text: string): HtmlElement = newElement("abbr", text) ## Abbreviation element
proc samp*(text: string): HtmlElement = newElement("samp", text) ## Sample output element
proc aside*(elements: seq[HtmlElement]): HtmlElement = newElement("aside", $elements) ## Aside element

proc del*(text: string): HtmlElement = newElement("del", text) ## Deleted text element
proc ins*(text: string): HtmlElement = newElement("ins", text) ## Inserted text element
proc dfn*(text: string): HtmlElement = newElement("dfn", text) ## Definition element
proc kbd*(text: string): HtmlElement = newElement("kbd", text) ## Define text as keyboard keys
proc bdi*(text: string): HtmlElement = newElement("bdi", text) ## Both-directional algorithm element
proc bdo*(text, dir: string): HtmlElement = newElement("bdo", @[attr("dir", dir)], text) ## Text direction element (dir: "rtl" -> right-to-left, "ltr" -> left-to-right)
proc time*(text: string): HtmlElement = newElement("time", text) ## Time element
proc time*(datetime, text: string): HtmlElement = time(text).add(attr("datetime", datetime)) ## Time element with datetime attribute
proc data*(value, text: string): HtmlElement = newElement("data", @[attr("value", value)], text) ## Data element

proc textarea*(name: string, rows, cols: SomeInteger|string, text: string = " "): HtmlElement =
    ## Text area element
    newElement("textarea", @[attr("rows", rows), attr("cols", cols)], text)
proc textarea*(id, name: string, rows, cols: SomeInteger|string, text: string = " "): HtmlElement =
    ## Text area element
    textarea(name, rows, cols, text).attr(attr("id", id))

proc form*(elements: seq[HtmlElement], action: string): HtmlElement = newElement(
    "form", $elements).add(
        attr("action", action)
    )## Form element

proc fieldset*(elements: seq[HtmlElement]): HtmlElement = newElement("fieldset", $elements) ## Field field element
proc datalist*(id: string, elements: seq[HtmlElement]): HtmlElement = newElement("datalist", @[attr("id", id)], $elements)
proc legend*(text: string): HtmlElement = newElement("legend", text) ## Legend element
proc label*(`for`, text: string): HtmlElement = newElement("label", @[attr("for", `for`)], text) ## Label element
proc input*(`type`, id, name: string): HtmlElement = newElement("input",
    attr("type", `type`), attr("id", id), attr("name", name)
) ## Input element
proc input*(`type`, idAndName: string): HtmlElement = input(`type`, idAndName, idAndName) ## Input element

# TODO: <output>

proc caption*(text: string): HtmlElement = newElement("caption", text) ## Caption element
proc table*(elements: seq[HtmlElement]): HtmlElement = newElement("table", $elements) ## Table element
proc thead*(elements: seq[HtmlElement]): HtmlElement = newElement("thead", $elements) ## Table head element
proc tbody*(elements: seq[HtmlElement]): HtmlElement = newElement("tbody", $elements) ## Table body element
proc tfoot*(elements: seq[HtmlElement]): HtmlElement = newElement("tfoot", $elements) ## Table foot element
proc tr*(elements: seq[HtmlElement]): HtmlElement = newElement("tr", $elements) ## Table row element
proc th*(text: string): HtmlElement = newElement("th", text) ## Table header cell element
proc td*(text: string): HtmlElement = newElement("td", text) ## Table data cell element

proc progress*(id: string, max: SomeInteger|string, text: string = " "): HtmlElement =
    ## Empty progress bar element
    newElement("progress", @[attr("max", $max), attr("id", id)], text)
proc progress*(id: string, value, max: SomeInteger|string, text = " "): HtmlElement =
    ## Progress bar element with value
    progress(id, max, text).attr(attr("value", $value))

proc select*(name, id: string, elements: seq[HtmlElement]): HtmlElement =
    ## Select element
    newElement("select", @[attr("name", name), attr("id", id)], $elements)
proc optgroup*(label: string, elements: seq[HtmlElement]): HtmlElement =
    newElement("optgroup", @[attr("label", label)]) ## Option group element
proc option*(value, text: string): HtmlElement = newElement("option", @[attr("value", value)], text) ## Option element

proc ol*(elements: seq[HtmlElement]): HtmlElement = newElement("ol", $elements) ## Ordered list element
proc ul*(elements: seq[HtmlElement]): HtmlElement = newElement("ul", $elements) ## Unordered list element
proc li*(text: string): HtmlElement = newElement("li", text) ## List item element

proc dl*(text: string): HtmlElement = newElement("dl", text) ## Description list element
proc dl*(elements: seq[HtmlElement]): HtmlElement = newElement("dl", $elements) ## Description list element
proc dd*(text: string): HtmlElement = newElement("dd", text) ## Description details element
proc dt*(text: string): HtmlElement = newElement("dt", text) ## Description term element


proc nav*(elements: seq[HtmlElement]): HtmlElement = newElement("nav", $elements) ## Nav element

proc dialog*(elements: seq[HtmlElement]): HtmlElement = newElement("dialog", @[attr("open")], $elements) ## Dialog element
proc script*(code: string): HtmlElement = newElement("script", $code) ## Script element
proc importScript*(src: string): HtmlElement = script(" ").add(attr("src", src)) ## Script element (used for external scripts)
proc noscript*(text: string): HtmlElement = newElement("noscript", text) ## NoScript element

proc figure*(elements: seq[HtmlElement]): HtmlElement = newElement("figure", $elements) ## Figure element
proc figcaption*(text: string): HtmlElement = newElement("figcaption", text) ## Figure caption element

proc iframe*(src: string): HtmlElement = newElement("iframe", @[attr("src", src)], " ") ## Iframe element

proc details*(elements: seq[HtmlElement]): HtmlElement = newElement("details", $elements) ## Details disclosure element
proc details*(header, content: string): HtmlElement = details(@[
    summary(header),
    text(content)
]) ## Details disclosure element

proc blockquote*(text: string, cite: string = ""): HtmlElement =
    ## Block quote element
    result = newElement("blockquote", text)
    if cite != "":
        result.tagAttributes.add(attr("cite", cite))

proc `div`*(elements: seq[HtmlElement]): HtmlElement = newElement("div", $elements) ## Constructor for div
proc `div`*(elements: varargs[HtmlElement]): HtmlElement =
    ## Constructor for div
    var temp: seq[HtmlElement]
    for element in elements:
        temp.add(element)
    newElement("div", $temp)

proc link*(rel, href: string): HtmlElement = newElement("link",
    attr("rel", rel), attr("href", href)
) ## Link for html head
proc link*(rel, `type`, href: string): HtmlElement = newElement("link",
    attr("rel", rel), attr("type", `type`), attr("href", href)
) ## Link for html head

proc comment*(text: string): HtmlElement = text("<!--" & text & "-->") ## Adds an HTML comment

proc base*(href, target: string): HtmlElement =
    ## Base element (specifies default URL and target for all links on a page)
    newElement("base", attr("href", href), attr("target", target))

proc stylesheet*(href: string): HtmlElement = link("stylesheet", href) ## Stylesheet for html head

proc icon*(href, `type`: string): HtmlElement = link("icon", `type`, href) ## Favicon for html head
proc icon*(href, `type`, sizes: string): HtmlElement = newElement("link",
    attr("rel", "icon"), attr("type", `type`), attr("sizes", sizes), attr("href", href)
) ## Favicon for html head

proc meta*(data: seq[array[2, string]]): HtmlElement =
    ## Generic builder for meta head
    var attributes: seq[HtmlElementAttribute]
    for attribute in data:
        attributes.add(attr(attribute[0], attribute[1]))
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

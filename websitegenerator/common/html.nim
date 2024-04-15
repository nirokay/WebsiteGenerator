## Common html snippets
## ====================
##
## This is a collection of common html snippets. These are not all of them!
## The purpose of these are to make life easier. You may still need to
## construct some `HtmlElement` objects yourself.

import std/[strutils]
import ../generators

proc newHeader(content: string, number: int): HtmlElement = newHtmlElement(
    "h" & $number, content
) ## Generic builder for header
proc videoBuilder(video: HtmlElement, sources: seq[HtmlElement], alt: string): HtmlElement =
    ## Generic builder for video elements
    result = video
    result.content = $sources & " " & alt & " "

proc source*(src, `type`: string): HtmlElement = newHtmlElement("source",
    attr("src", src),
    attr("type", `type`)
) ## Source element

proc video*(width, height: string | SomeInteger, sources: seq[HtmlElement], alt: string, controls: bool = true): HtmlElement =
    ## Video element with multiple sources
    result = newHtmlElement("video", attr("width", $width), attr("height", $height))
    if controls:
        result.tagAttributes.add(attr("controls"))
    return result.videoBuilder(sources, alt)
proc video*(width, height: string | SomeInteger, source: HtmlElement, alt: string, controls: bool = true): HtmlElement =
    ## Video element with single source
    result = video(width, height, @[source], alt, controls)
proc track*(src, kind, srclang, label: string): HtmlElement =
    ## Track element (subtitles for video/audio) -> uses .vtt files
    newHtmlElement("track", attr("src", src), attr("kind", kind), attr("srclang", srclang), attr("label", label))

proc img*(src: string, alt: string): HtmlElement = newHtmlElement(
    "img",
    @[attr("src", src), attr("alt", alt)]
) ## Image element
proc image*(source: string, alt: string): HtmlElement {.deprecated: "Use `img` instead.".} = img(source, alt) ## Image element

proc header*(content: string): HtmlElement = newHtmlElement("header", content) ## Header element
proc article*(content: string): HtmlElement = newHtmlElement("article", content) ## Article element
proc footer*(content: string): HtmlElement = newHtmlElement("footer", content) ## Footer element
proc main*(content: string): HtmlElement = newHtmlElement("main", content) ## Main element

proc h1*(text: string): HtmlElement = newHeader(text, 1) ## Html header 1 element
proc h2*(text: string): HtmlElement = newHeader(text, 2) ## Html header 2 element
proc h3*(text: string): HtmlElement = newHeader(text, 3) ## Html header 3 element
proc h4*(text: string): HtmlElement = newHeader(text, 4) ## Html header 4 element
proc h5*(text: string): HtmlElement = newHeader(text, 5) ## Html header 5 element
proc h6*(text: string): HtmlElement = newHeader(text, 6) ## Html header 6 element

proc br*(): HtmlElement = newHtmlElement("br", attr("/")) ## Line break element
proc p*(text: string): HtmlElement = newHtmlElement("p", text.replace("\n", $br())) ## Paragraph element
proc p*(text: seq[string]): HtmlElement = p(text.join($br()))
proc q*(text: string): HtmlElement = newHtmlElement("q", text) ## Quote element
proc a*(href, content: string): HtmlElement = newHtmlElement("a", @[attr("href", href)], content) ## Anchor element
proc b*(text: string): HtmlElement = newHtmlElement("b", text) ## Bold element
proc i*(text: string): HtmlElement = newHtmlElement("i", text) ## Italic / "Alternative style"
proc s*(text: string): HtmlElement = newHtmlElement("s", text) ## Strike-Through element
proc u*(text: string): HtmlElement = newHtmlElement("u", text) ## "Mark up misspelled words" tag
proc em*(text: string): HtmlElement = newHtmlElement("em", text) ## Emphasis element
proc `var`*(text: string): HtmlElement = newHtmlElement("var", text) ## Variable element
proc small*(text: string): HtmlElement = newHtmlElement("small", text) ## Small text element
proc strong*(text: string): HtmlElement = newHtmlElement("strong", text) ## Strong element
proc mark*(text: string): HtmlElement = newHtmlElement("mark", text) ## Marked text element
proc pre*(text: string): HtmlElement = newHtmlElement("pre", text) ## Pre element
proc sub*(text: string): HtmlElement = newHtmlElement("sub", text) ## Subscript text element
proc sup*(text: string): HtmlElement = newHtmlElement("sup", text) ## Superscript text element
proc hr*(): HtmlElement = newHtmlElement("hr") ## Horizontal line element
proc wbr*(): HtmlElement = newHtmlElement("wbr") ## Word Break Opportunity element

proc meter*(min, max: SomeInteger|string, text: string = " "): HtmlElement = newHtmlElement("meter",
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
    newHtmlElement("meter", @[attr("value", $value)], text)
proc meter*(id: string, value: SomeFloat|string, text: string = " "): HtmlElement =
    ## Meter / Gauge element with percentage and id
    meter(value, text).attr(attr("id", id))

proc section*(text: string): HtmlElement = newHtmlElement("section", text) ## Section element
proc section*(elements: seq[HtmlElement]): HtmlElement = section($elements) ## Section element
proc summary*(text: string): HtmlElement = newHtmlElement("summary", text) ## Summary element
proc code*(text: string): HtmlElement = newHtmlElement("code", text) ## Inline code element
proc text*(text: string): HtmlElement = newHtmlElement("", text) ## Raw text
proc abbr*(text: string): HtmlElement = newHtmlElement("abbr", text) ## Abbreviation element
proc samp*(text: string): HtmlElement = newHtmlElement("samp", text) ## Sample output element
proc aside*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("aside", $elements) ## Aside element

proc del*(text: string): HtmlElement = newHtmlElement("del", text) ## Deleted text element
proc ins*(text: string): HtmlElement = newHtmlElement("ins", text) ## Inserted text element
proc dfn*(text: string): HtmlElement = newHtmlElement("dfn", text) ## Definition element
proc kbd*(text: string): HtmlElement = newHtmlElement("kbd", text) ## Define text as keyboard keys
proc bdi*(text: string): HtmlElement = newHtmlElement("bdi", text) ## Both-directional algorithm element
proc bdo*(text, dir: string): HtmlElement = newHtmlElement("bdo", @[attr("dir", dir)], text) ## Text direction element (dir: "rtl" -> right-to-left, "ltr" -> left-to-right)
proc time*(text: string): HtmlElement = newHtmlElement("time", text) ## Time element
proc time*(datetime, text: string): HtmlElement = time(text).add(attr("datetime", datetime)) ## Time element with datetime attribute
proc data*(value, text: string): HtmlElement = newHtmlElement("data", @[attr("value", value)], text) ## Data element

proc textarea*(name: string, rows, cols: SomeInteger|string, text: string = " "): HtmlElement =
    ## Text area element
    newHtmlElement("textarea", @[attr("rows", rows), attr("cols", cols)], text)
proc textarea*(id, name: string, rows, cols: SomeInteger|string, text: string = " "): HtmlElement =
    ## Text area element
    textarea(name, rows, cols, text).attr(attr("id", id))

proc form*(elements: seq[HtmlElement], action: string): HtmlElement = newHtmlElement(
    "form", $elements).add(
        attr("action", action)
    )## Form element

proc fieldset*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("fieldset", $elements) ## Field field element
proc datalist*(id: string, elements: seq[HtmlElement]): HtmlElement = newHtmlElement("datalist", @[attr("id", id)], $elements)
proc legend*(text: string): HtmlElement = newHtmlElement("legend", text) ## Legend element
proc label*(`for`, text: string): HtmlElement = newHtmlElement("label", @[attr("for", `for`)], text) ## Label element
proc input*(`type`, id, name: string): HtmlElement = newHtmlElement("input",
    attr("type", `type`), attr("id", id), attr("name", name)
) ## Input element
proc input*(`type`, idAndName: string): HtmlElement = input(`type`, idAndName, idAndName) ## Input element

# TODO: <output>

proc caption*(text: string): HtmlElement = newHtmlElement("caption", text) ## Caption element
proc table*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("table", $elements) ## Table element
proc thead*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("thead", $elements) ## Table head element
proc tbody*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tbody", $elements) ## Table body element
proc tfoot*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tfoot", $elements) ## Table foot element
proc tr*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tr", $elements) ## Table row element
proc th*(text: string): HtmlElement = newHtmlElement("th", text) ## Table header cell element
proc td*(text: string): HtmlElement = newHtmlElement("td", text) ## Table data cell element

proc progress*(id: string, max: SomeInteger|string, text: string = " "): HtmlElement =
    ## Empty progress bar element
    newHtmlElement("progress", @[attr("max", $max), attr("id", id)], text)
proc progress*(id: string, value, max: SomeInteger|string, text = " "): HtmlElement =
    ## Progress bar element with value
    progress(id, max, text).attr(attr("value", $value))

proc select*(name, id: string, elements: seq[HtmlElement]): HtmlElement =
    ## Select element
    newHtmlElement("select", @[attr("name", name), attr("id", id)], $elements)
proc optgroup*(label: string, elements: seq[HtmlElement]): HtmlElement =
    newHtmlElement("optgroup", @[attr("label", label)]) ## Option group element
proc option*(value, text: string): HtmlElement = newHtmlElement("option", @[attr("value", value)], text) ## Option element

proc ol*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("ol", $elements) ## Ordered list element
proc ul*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("ul", $elements) ## Unordered list element
proc li*(text: string): HtmlElement = newHtmlElement("li", text) ## List item element

proc dl*(text: string): HtmlElement = newHtmlElement("dl", text) ## Description list element
proc dl*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("dl", $elements) ## Description list element
proc dd*(text: string): HtmlElement = newHtmlElement("dd", text) ## Description details element
proc dt*(text: string): HtmlElement = newHtmlElement("dt", text) ## Description term element


proc nav*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("nav", $elements) ## Nav element

proc dialog*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("dialog", @[attr("open")], $elements) ## Dialog element
proc script*(code: string): HtmlElement = newHtmlElement("script", $code) ## Script element
proc importScript*(src: string): HtmlElement = script(" ").add(attr("src", src)) ## Script element (used for external scripts)
proc noscript*(text: string): HtmlElement = newHtmlElement("noscript", text) ## NoScript element

proc figure*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("figure", $elements) ## Figure element
proc figcaption*(text: string): HtmlElement = newHtmlElement("figcaption", text) ## Figure caption element

proc iframe*(src: string): HtmlElement = newHtmlElement("iframe", @[attr("src", src)], " ") ## Iframe element

proc details*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("details", $elements) ## Details disclosure element
proc details*(header, content: string): HtmlElement = details(@[
    summary(header),
    text(content)
]) ## Details disclosure element

proc blockquote*(text: string, cite: string = ""): HtmlElement =
    ## Block quote element
    result = newHtmlElement("blockquote", text)
    if cite != "":
        result.tagAttributes.add(attr("cite", cite))

proc `div`*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("div", $elements) ## Constructor for div
proc `div`*(elements: varargs[HtmlElement]): HtmlElement =
    ## Constructor for div
    var temp: seq[HtmlElement]
    for element in elements:
        temp.add(element)
    newHtmlElement("div", $temp)

proc link*(rel, href: string): HtmlElement = newHtmlElement("link",
    attr("rel", rel), attr("href", href)
) ## Link for html head
proc link*(rel, `type`, href: string): HtmlElement = newHtmlElement("link",
    attr("rel", rel), attr("type", `type`), attr("href", href)
) ## Link for html head

proc comment*(text: string): HtmlElement = text("<!--" & text & "-->") ## Adds an HTML comment

proc base*(href, target: string): HtmlElement =
    ## Base element (specifies default URL and target for all links on a page)
    newHtmlElement("base", attr("href", href), attr("target", target))

proc stylesheet*(href: string): HtmlElement = link("stylesheet", href) ## Stylesheet for html head

proc icon*(href, `type`: string): HtmlElement = link("icon", `type`, href) ## Favicon for html head
proc icon*(href, `type`, sizes: string): HtmlElement = newHtmlElement("link",
    attr("rel", "icon"), attr("type", `type`), attr("sizes", sizes), attr("href", href)
) ## Favicon for html head

proc meta*(data: seq[array[2, string]]): HtmlElement =
    ## Generic builder for meta head
    var attributes: seq[HtmlElementAttribute]
    for attribute in data:
        attributes.add(attr(attribute[0], attribute[1]))
    result = newHtmlElement("meta", attributes)

proc title*(text: string): HtmlElement = newHtmlElement("title", text) ## Title for html head
proc description*(content: string): HtmlElement = meta(@[
    ["name", "description"], ["content", content]
]) ## Description for html head
proc viewport*(content: string): HtmlElement = meta(@[
    ["name", "viewport"], ["content", content]
]) ## Viewport for html head
proc charset*(charset: string): HtmlElement = meta(@[
    ["charset", charset]
]) ## Charset for html head

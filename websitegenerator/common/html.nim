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
).forceClosingTag() ## Generic builder for header
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
    if controls: result.tagAttributes.add(attr("controls"))
    return result.videoBuilder(sources, alt)
proc video*(width, height: string | SomeInteger, source: HtmlElement, alt: string, controls: bool = true): HtmlElement =
    ## Video element with single source
    result = video(width, height, @[source], alt, controls)
proc track*(src, kind, srclang, label: string): HtmlElement =
    ## Track element (subtitles for video/audio) -> uses .vtt files
    newHtmlElement("track", attr("src", src), attr("kind", kind), attr("srclang", srclang), attr("label", label))

proc audio*(src: string, controls: bool = true): HtmlElement =
    result = newHtmlElement("audio",
        attr("src", src)
    ).forceClosingTag()
    if controls: result.tagAttributes.add(attr("controls"))

proc img*(src: string, alt: string): HtmlElement = newHtmlElement(
    "img",
    @[attr("src", src), attr("alt", alt)]
) ## Image element
proc image*(source: string, alt: string): HtmlElement {.deprecated: "Use `img` instead.".} = img(source, alt) ## Image element

proc header*(content: string): HtmlElement = newHtmlElement("header", content).forceClosingTag() ## Header element
proc header*(content: seq[HtmlElement]): HtmlElement = header($content) ## Header element
proc header*(content: varargs[HtmlElement]): HtmlElement = header($content) ## Header element
proc article*(content: string): HtmlElement = newHtmlElement("article", content).forceClosingTag() ## Article element
proc article*(content: seq[HtmlElement]): HtmlElement = article($content) ## Article element
proc article*(content: varargs[HtmlElement]): HtmlElement = article($content) ## Article element
proc main*(content: string): HtmlElement = newHtmlElement("main", content).forceClosingTag() ## Main element
proc main*(content: seq[HtmlElement]): HtmlElement = main($content) ## Main element
proc main*(content: varargs[HtmlElement]): HtmlElement = main($content) ## Main element
proc footer*(content: string): HtmlElement = newHtmlElement("footer", content).forceClosingTag() ## Footer element
proc footer*(content: seq[HtmlElement]): HtmlElement = footer($content) ## Footer element
proc footer*(content: varargs[HtmlElement]): HtmlElement = footer($content) ## Footer element

proc h1*(text: string): HtmlElement = newHeader(text, 1) ## Html header 1 element
proc h2*(text: string): HtmlElement = newHeader(text, 2) ## Html header 2 element
proc h3*(text: string): HtmlElement = newHeader(text, 3) ## Html header 3 element
proc h4*(text: string): HtmlElement = newHeader(text, 4) ## Html header 4 element
proc h5*(text: string): HtmlElement = newHeader(text, 5) ## Html header 5 element
proc h6*(text: string): HtmlElement = newHeader(text, 6) ## Html header 6 element

proc br*(): HtmlElement = newHtmlElement("br") ## Line break element
proc p*(text: string): HtmlElement = newHtmlElement("p", text.replace("\n", $br())).forceClosingTag() ## Paragraph element
proc p*(text: seq[string]): HtmlElement = p(text.join($br())) ## Paragraph element
proc q*(text: string): HtmlElement = newHtmlElement("q", text).forceClosingTag() ## Quote element
proc q*(href, text: string): HtmlElement = q(text).addattr("href", href) ## Quote element
proc a*(href, content: string): HtmlElement = newHtmlElement("a", @[attr("href", href)], content) ## Anchor element
proc b*(text: string): HtmlElement = newHtmlElement("b", text).forceClosingTag() ## Bring Attention To / "Bold" element
proc i*(text: string): HtmlElement = newHtmlElement("i", text).forceClosingTag() ## Italic / "Alternative style" element
proc s*(text: string): HtmlElement = newHtmlElement("s", text).forceClosingTag() ## Strike-Through element
proc u*(text: string): HtmlElement = newHtmlElement("u", text).forceClosingTag() ## Unarticulated Annotation (Underline) element
proc em*(text: string): HtmlElement = newHtmlElement("em", text).forceClosingTag() ## Emphasis element
proc `var`*(text: string): HtmlElement = newHtmlElement("var", text) ## Variable element
proc small*(text: string): HtmlElement = newHtmlElement("small", text) ## Small text element
proc strong*(text: string): HtmlElement = newHtmlElement("strong", text) ## Strong element
proc mark*(text: string): HtmlElement = newHtmlElement("mark", text) ## Marked text element
proc pre*(text: string): HtmlElement = newHtmlElement("pre", text) ## Pre element
proc sub*(text: string): HtmlElement = newHtmlElement("sub", text) ## Subscript text element
proc sup*(text: string): HtmlElement = newHtmlElement("sup", text) ## Superscript text element
proc hr*(): HtmlElement = newHtmlElement("hr") ## Horizontal line element
proc wbr*(): HtmlElement = newHtmlElement("wbr") ## Word Break Opportunity element

proc address*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("address", $elements).forceClosingTag() ## Address element
proc address*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("address", $elements).forceClosingTag() ## Address element

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

proc rawText*(text: string): HtmlElement = newHtmlElement("", text) ## Raw text inside HTML
proc comment*(text: string): HtmlElement = rawText("<!-- " & text & "-->") ## HTML comment

proc section*(text: string): HtmlElement = newHtmlElement("section", text).forceClosingTag() ## Section element
proc section*(elements: seq[HtmlElement]): HtmlElement = section($elements) ## Section element
proc section*(elements: varargs[HtmlElement]): HtmlElement = section($elements) ## Section element
proc summary*(text: string): HtmlElement = newHtmlElement("summary", text).forceClosingTag() ## Summary element
proc code*(text: string): HtmlElement = newHtmlElement("code", text).forceClosingTag() ## Inline code element
proc abbr*(text: string): HtmlElement = newHtmlElement("abbr", text) ## Abbreviation element
proc samp*(text: string): HtmlElement = newHtmlElement("samp", text) ## Sample output element
proc aside*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("aside", $elements) ## Aside element
proc aside*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("aside", $elements) ## Aside element


proc del*(text: string): HtmlElement = newHtmlElement("del", text).forceClosingTag() ## Deleted text element
proc ins*(text: string): HtmlElement = newHtmlElement("ins", text).forceClosingTag() ## Inserted text element
proc dfn*(text: string): HtmlElement = newHtmlElement("dfn", text).forceClosingTag() ## Definition element
proc kbd*(text: string): HtmlElement = newHtmlElement("kbd", text).forceClosingTag() ## Define text as keyboard keys
proc bdi*(text: string): HtmlElement = newHtmlElement("bdi", text).forceClosingTag() ## Bidirectional Isolate element
proc bdo*(text, dir: string): HtmlElement = newHtmlElement("bdo", @[attr("dir", dir)], text).forceClosingTag() ## Bidirectional Text Override element (dir: "rtl" -> right-to-left, "ltr" -> left-to-right)
proc time*(text: string): HtmlElement = newHtmlElement("time", text).forceClosingTag().forceClosingTag() ## Time element
proc time*(datetime, text: string): HtmlElement = time(text).add(attr("datetime", datetime)).forceClosingTag() ## Time element with datetime attribute
proc data*(value, text: string): HtmlElement = newHtmlElement("data", @[attr("value", value)], text).forceClosingTag() ## Data element

proc textarea*(name: string, rows, cols: SomeInteger|string, text: string = " "): HtmlElement =
    ## Text area element
    newHtmlElement("textarea", @[attr("rows", rows), attr("cols", cols)], text).forceClosingTag()
proc textarea*(id, name: string, rows, cols: SomeInteger|string, text: string = " "): HtmlElement =
    ## Text area element
    textarea(name, rows, cols, text).attr(attr("id", id))

proc area*(shape, coords, href: string): HtmlElement = newHtmlElement("area",
    attr("shape", shape),
    attr("coords", coords),
    attr("href", href)
)
proc area*[T: string|SomeNumber](shape: string, coords: seq[T], href: string): HtmlElement = newHtmlElement("area",
    attr("shape", shape),
    attr("coords", coords.join(",")),
    attr("href", href)
)

proc canvas*(alt: string): HtmlElement = newHtmlElement("canvas").forceClosingTag() ## Canvas element
proc canvas*(id, alt: string): HtmlElement = canvas(alt).addattr("id", id) ## Canvas element

proc form*(elements: seq[HtmlElement], action: string): HtmlElement = newHtmlElement(
    "form", $elements).add(
        attr("action", action)
    )## Form element

proc button*(content: string): HtmlElement = newHtmlElement("button", content).forceClosingTag()
proc button*(content, onclick: string): HtmlElement = button(content).addattr("onclick", content)

proc fieldset*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("fieldset", $elements).forceClosingTag() ## Fieldset element
proc fieldset*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("fieldset", $elements).forceClosingTag() ## Fieldset element
proc datalist*(id: string, elements: seq[HtmlElement]): HtmlElement = newHtmlElement("datalist", @[attr("id", id)], $elements) ## Datalist element
proc datalist*(id: string, elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("datalist", @[attr("id", id)], $elements) ## Datalist element
proc legend*(text: string): HtmlElement = newHtmlElement("legend", text).forceClosingTag() ## Legend element
proc label*(`for`, text: string): HtmlElement = newHtmlElement("label", @[attr("for", `for`)], text).forceClosingTag() ## Label element

proc input*[T](`type`, id, name: string, value: T = new T): HtmlElement = newHtmlElement("input",
    attr("type", `type`), attr("id", id), attr("name", name), attr("value", value)
) ## Input element
proc input*[T](`type`, idAndName: string, value: T = new T): HtmlElement = input(`type`, idAndName, idAndName, value) ## Input element (same id and name)

proc output*(name, `for`: string, content: string = ""): HtmlElement = newHtmlElement("output", content).add(
    attr("name", name),
    attr("for", `for`)
).forceClosingTag() ## Output element
proc output*(name: string, forIds: seq[string], content: string = ""): HtmlElement = output(name, forIds.join(" "), content) ## Output element

proc caption*(text: string): HtmlElement = newHtmlElement("caption", text).forceClosingTag() ## Caption element
proc table*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("table", $elements).forceClosingTag() ## Table element
proc table*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("table", $elements).forceClosingTag() ## Table element
proc thead*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("thead", $elements).forceClosingTag() ## Table head element
proc thead*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("thead", $elements).forceClosingTag() ## Table head element
proc tbody*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tbody", $elements).forceClosingTag() ## Table body element
proc tbody*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("tbody", $elements).forceClosingTag() ## Table body element
proc tfoot*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tfoot", $elements).forceClosingTag() ## Table foot element
proc tfoot*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("tfoot", $elements).forceClosingTag() ## Table foot element
proc tr*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tr", $elements).forceClosingTag() ## Table row element
proc tr*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("tr", $elements).forceClosingTag() ## Table row element
proc th*(text: string): HtmlElement = newHtmlElement("th", text).forceClosingTag() ## Table header cell element
proc td*(text: string): HtmlElement = newHtmlElement("td", text).forceClosingTag() ## Table data cell element

proc colgroup*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("colgroup", $elements).forceClosingTag() ## Table Column Group element
proc col*(): HtmlElement = newHtmlElement("col") ## Table column element
proc col*(span: string|SomeInteger): HtmlElement = col().addattr("span", span) ## Table column element

proc progress*(id: string, max: SomeInteger|string, text: string = ""): HtmlElement =
    ## Empty progress bar element
    newHtmlElement("progress", @[attr("max", $max), attr("id", id)], text).forceClosingTag()
proc progress*(id: string, value, max: SomeInteger|string, text: string = ""): HtmlElement =
    ## Progress bar element with value
    progress(id, max, text).attr(attr("value", $value))

proc select*(name, id: string, elements: seq[HtmlElement]): HtmlElement =
    ## Select element
    newHtmlElement("select", @[attr("name", name), attr("id", id)], $elements).forceClosingTag()
proc select*(name, id: string, elements: varargs[HtmlElement]): HtmlElement =
    ## Select element
    newHtmlElement("select", @[attr("name", name), attr("id", id)], $elements).forceClosingTag()
proc optgroup*(label: string, elements: seq[HtmlElement]): HtmlElement =
    newHtmlElement("optgroup", @[attr("label", label)]).forceClosingTag() ## Option group element
proc optgroup*(label: string, elements: varargs[HtmlElement]): HtmlElement =
    newHtmlElement("optgroup", @[attr("label", label)]).forceClosingTag() ## Option group element
proc option*(value, text: string): HtmlElement =
    newHtmlElement("option", @[attr("value", value)], text).forceClosingTag() ## Option element

proc ol*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("ol", $elements).forceClosingTag() ## Ordered list element
proc ol*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("ol", $elements).forceClosingTag() ## Ordered list element
proc ul*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("ul", $elements).forceClosingTag() ## Unordered list element
proc ul*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("ul", $elements).forceClosingTag() ## Unordered list element

proc li*(text: string): HtmlElement = newHtmlElement("li", text).forceClosingTag() ## List item element

proc dl*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("dl", $elements).forceClosingTag() ## Description list element
proc dl*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("dl", $elements) ## Description list element
proc dt*(text: string): HtmlElement = newHtmlElement("dt", text).forceClosingTag() ## Description term element
proc dd*(text: string): HtmlElement = newHtmlElement("dd", text).forceClosingTag() ## Description details element


proc nav*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("nav", $elements) ## Nav element

proc dialog*(open: bool, elements: seq[HtmlElement]): HtmlElement =
    ## Dialog element
    result = newHtmlElement("dialog", $elements)

proc dialog*(open: bool, elements: varargs[HtmlElement]): HtmlElement =
    ## Dialog element
    result = newHtmlElement("dialog", $elements)
    if open: result.addattr("open")

proc script*(code: string): HtmlElement = newHtmlElement("script", $code).forceClosingTag() ## Script element
proc importScript*(src: string): HtmlElement = script("").addattr("src", src) ## Script element (used for importing external scripts)
proc noscript*(text: string): HtmlElement = newHtmlElement("noscript", text) ## NoScript element

proc figure*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("figure", $elements) ## Figure element
proc figcaption*(text: string): HtmlElement = newHtmlElement("figcaption", text) ## Figure caption element

proc iframe*(src: string): HtmlElement = newHtmlElement("iframe", @[attr("src", src)], " ") ## Iframe element

proc details*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("details", $elements) ## Details disclosure element
proc details*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("details", $elements) ## Details disclosure element
proc details*(header, content: string): HtmlElement = details(@[
    summary(header),
    rawText(content)
]) ## Details disclosure element

proc blockquote*(text: string, cite: string = ""): HtmlElement =
    ## Block quote element
    result = newHtmlElement("blockquote", text)
    if cite != "":
        result.tagAttributes.add(attr("cite", cite))

proc cite*(content: string): HtmlElement = newHtmlElement("cite", content) ## Citation element

proc `div`*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("div", $elements).forceClosingTag() ## Constructor for div
proc `div`*(elements: varargs[HtmlElement]): HtmlElement = newHtmlElement("div", $elements).forceClosingTag() ## Constructor for div

proc link*(rel, href: string): HtmlElement = newHtmlElement("link",
    attr("rel", rel), attr("href", href)
) ## Link for html head
proc link*(rel, `type`, href: string): HtmlElement = newHtmlElement("link",
    attr("rel", rel), attr("type", `type`), attr("href", href)
) ## Link for html head

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

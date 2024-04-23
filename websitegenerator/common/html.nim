## Common html snippets
## ====================
##
## This is a collection of common html snippets. These are not all of them!
## The purpose of these are to make life easier. You may still need to
## construct some `HtmlElement` objects yourself.
##
## (Hopefully) All (non-deprecated) elements from https://developer.mozilla.org/en-US/docs/Web/HTML/Reference are included.

import std/[strutils, sequtils]
import ../generators
import ../mimetypes

from std/httpcore import HttpMethod

proc rawText*(text: string): HtmlElement = newHtmlElement("", text) ## Raw text inside HTML
proc comment*(text: string): HtmlElement = rawText("<!-- " & text & "-->") ## HTML comment

proc newHeader(content: string, number: int): HtmlElement = newHtmlElement(
    "h" & $number, content
).forceClosingTag() ## Generic builder for header
proc videoBuilder(video: HtmlElement, sources: seq[HtmlElement], alt: string): HtmlElement =
    ## Generic builder for video elements
    result = video
    result.content = $sources & " " & alt & " "

proc source*(src: string, `type`: MimeType|string): HtmlElement = newHtmlElement("source",
    attr("src", src),
    attr("type", $`type`)
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

proc embed*(`type`: MimeType|string, src: string, width, height: string|SomeInteger): HtmlElement =
    newHtmlElement("embed",
        attr("type", $`type`),
        attr("src", src),
        attr("width", $width),
        attr("height", $height)
    ) ## Embed external content element

proc picture*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("picture", $elements).forceClosingTag() ## Picture element
proc picture*(elements: varargs[HtmlElement]): HtmlElement = picture(elements.toSeq()) ## Picture element

proc map*(name: string, elements: seq[HtmlElement]): HtmlElement =
    ## Image map element
    newHtmlElement("map", $elements)
        .addattr("name", name)
        .forceClosingTag()
proc map*(name: string, elements: varargs[HtmlElement]): HtmlElement = map(name, elements.toSeq()) ## Image map element

proc hgroup*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("hgroup", $elements) ## Heading Group element
proc hgroup*(elements: varargs[HtmlElement]): HtmlElement = hgroup(elements.toSeq()) ## Heading Group element

proc header*(content: string): HtmlElement = newHtmlElement("header", content).forceClosingTag() ## Header element
proc header*(content: seq[HtmlElement]): HtmlElement = header($content) ## Header element
proc header*(content: varargs[HtmlElement]): HtmlElement = header(content.toSeq()) ## Header element
proc article*(content: string): HtmlElement = newHtmlElement("article", content).forceClosingTag() ## Article element
proc article*(content: seq[HtmlElement]): HtmlElement = article($content) ## Article element
proc article*(content: varargs[HtmlElement]): HtmlElement = article(content.toSeq()) ## Article element
proc main*(content: string): HtmlElement = newHtmlElement("main", content).forceClosingTag() ## Main element
proc main*(content: seq[HtmlElement]): HtmlElement = main($content) ## Main element
proc main*(content: varargs[HtmlElement]): HtmlElement = main(content.toSeq()) ## Main element
proc footer*(content: string): HtmlElement = newHtmlElement("footer", content).forceClosingTag() ## Footer element
proc footer*(content: seq[HtmlElement]): HtmlElement = footer($content) ## Footer element
proc footer*(content: varargs[HtmlElement]): HtmlElement = footer(content.toSeq()) ## Footer element

proc h1*(text: string): HtmlElement = newHeader(text, 1) ## Html header 1 element
proc h2*(text: string): HtmlElement = newHeader(text, 2) ## Html header 2 element
proc h3*(text: string): HtmlElement = newHeader(text, 3) ## Html header 3 element
proc h4*(text: string): HtmlElement = newHeader(text, 4) ## Html header 4 element
proc h5*(text: string): HtmlElement = newHeader(text, 5) ## Html header 5 element
proc h6*(text: string): HtmlElement = newHeader(text, 6) ## Html header 6 element

proc br*(): HtmlElement = newHtmlElement("br") ## Line break element
proc p*(text: string): HtmlElement = newHtmlElement("p", text.replace("\n", $br())).forceClosingTag() ## Paragraph element
proc p*(text: seq[string]): HtmlElement = p(text.join($br())) ## Paragraph element
proc p*(text: varargs[string]): HtmlElement = p(text.toSeq()) ## Paragraph element
proc span*(text: string): HtmlElement = newHtmlElement("span", text).forceClosingTag() ## Content Span element
proc span*(text, class: string): HtmlElement = span(text).setClass(class) ## Content Span element
proc span*(text: string, class: CssElement): HtmlElement = span(text).setClass(class) ## Content Span element
proc q*(text: string): HtmlElement = newHtmlElement("q", text).forceClosingTag() ## Inline quote element
proc q*(href, text: string): HtmlElement = q(text).addattr("href", href) ## Quote element
proc a*(href, content: string): HtmlElement = newHtmlElement("a", @[attr("href", href)], content) ## Anchor element
proc b*(text: string): HtmlElement = newHtmlElement("b", text).forceClosingTag() ## Bring Attention To / "Bold" element
proc i*(text: string): HtmlElement = newHtmlElement("i", text).forceClosingTag() ## Italic / "Alternative style" element
proc s*(text: string): HtmlElement = newHtmlElement("s", text).forceClosingTag() ## Strike-Through element
proc u*(text: string): HtmlElement = newHtmlElement("u", text).forceClosingTag() ## Unarticulated Annotation (Underline) element
proc em*(text: string): HtmlElement = newHtmlElement("em", text).forceClosingTag() ## Emphasis element
proc `var`*(text: string): HtmlElement = newHtmlElement("var", text).forceClosingTag() ## Variable element
proc small*(text: string): HtmlElement = newHtmlElement("small", text).forceClosingTag() ## Small text element
proc strong*(text: string): HtmlElement = newHtmlElement("strong", text).forceClosingTag() ## Strong element
proc mark*(text: string): HtmlElement = newHtmlElement("mark", text).forceClosingTag() ## Marked text element
proc pre*(text: string): HtmlElement = newHtmlElement("pre", text).forceClosingTag() ## Preformatted text element
proc sub*(text: string): HtmlElement = newHtmlElement("sub", text).forceClosingTag() ## Subscript text element
proc sup*(text: string): HtmlElement = newHtmlElement("sup", text).forceClosingTag() ## Superscript text element
proc hr*(): HtmlElement = newHtmlElement("hr") ## Horizontal line element
proc wbr*(): HtmlElement = newHtmlElement("wbr") ## Word Break Opportunity element


proc address*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("address", $elements).forceClosingTag() ## Address element
proc address*(elements: varargs[HtmlElement]): HtmlElement = address(elements.toSeq()) ## Address element

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

proc ruby*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("ruby", $elements).forceClosingTag() ## Ruby annotation element
proc ruby*(elements: varargs[HtmlElement]): HtmlElement = ruby(elements.toSeq()) ## Ruby annotation element

proc rp*(text: string): HtmlElement = newHtmlElement("rp", text) ## Ruby Fallback Parenthesis element
proc rt*(text: string): HtmlElement = newHtmlElement("rt", text) ## Ruby Text element

proc rtWithFallback*(text, alt: string): HtmlElement = rawText(text & $rp"(" & alt & $rp")")
proc rubyWithFallback*(stringWithFallback: varargs[array[2, string]]): HtmlElement =
    ## Ruby Text element with Ruby Fallback annotation
    ##
    ## Example: `rubyWithFallback(["漢", "kan"], ["字", "ji"])`
    var elements: seq[HtmlElement]
    for element in stringWithFallback:
        elements.add(
            rtWithFallback(element[0], element[1])
        )
    result = ruby(elements)


proc section*(text: string): HtmlElement = newHtmlElement("section", text).forceClosingTag() ## Section element
proc section*(elements: seq[HtmlElement]): HtmlElement = section($elements) ## Section element
proc section*(elements: varargs[HtmlElement]): HtmlElement = section(elements.toSeq()) ## Section element
proc summary*(text: string): HtmlElement = newHtmlElement("summary", text).forceClosingTag() ## Summary element
proc code*(text: string): HtmlElement = newHtmlElement("code", text).forceClosingTag() ## Inline code element
proc abbr*(text: string): HtmlElement = newHtmlElement("abbr", text).forceClosingTag() ## Abbreviation element
proc samp*(text: string): HtmlElement = newHtmlElement("samp", text).forceClosingTag() ## Sample output element
proc aside*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("aside", $elements).forceClosingTag() ## Aside element
proc aside*(elements: varargs[HtmlElement]): HtmlElement = aside(elements.toSeq()) ## Aside element


proc del*(text: string): HtmlElement = newHtmlElement("del", text).forceClosingTag() ## Deleted text element
proc ins*(text: string): HtmlElement = newHtmlElement("ins", text).forceClosingTag() ## Inserted text element
proc dfn*(text: string): HtmlElement = newHtmlElement("dfn", text).forceClosingTag() ## Definition element
proc kbd*(text: string): HtmlElement = newHtmlElement("kbd", text).forceClosingTag() ## Define text as keyboard keys
proc bdi*(text: string): HtmlElement = newHtmlElement("bdi", text).forceClosingTag() ## Bidirectional Isolate element
proc bdo*(text, dir: string): HtmlElement = newHtmlElement("bdo", @[attr("dir", dir)], text).forceClosingTag() ## Bidirectional Text Override element (dir: "rtl" -> right-to-left, "ltr" -> left-to-right)
proc time*(text: string): HtmlElement = newHtmlElement("time", text).forceClosingTag().forceClosingTag() ## Time element
proc time*(datetime, text: string): HtmlElement = time(text).add(attr("datetime", datetime)).forceClosingTag() ## Time element with datetime attribute
proc data*(value, text: string): HtmlElement = newHtmlElement("data", @[attr("value", value)], text).forceClosingTag() ## Data element

proc textarea*(text: string = ""): HtmlElement = newHtmlElement("textarea", text).forceClosingTag() ## Text area element
proc textarea*(name: string, rows, cols: SomeInteger|string, text: string = ""): HtmlElement =
    ## Text area element
    textarea(text).add(
        attr("rows", rows),
        attr("cols", cols)
    )
proc textarea*(id, name: string, rows, cols: SomeInteger|string, text: string = ""): HtmlElement =
    ## Text area element
    textarea(name, rows, cols, text).addattr("id", id)

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

proc form*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("form", $elements).forceClosingTag() ## Form element
proc form*(elements: varargs[HtmlElement]): HtmlElement = form(elements.toSeq()) ## Form element

proc form*(action: string, `method`: HttpMethod|string, elements: seq[HtmlElement]): HtmlElement =
    ## Form element
    result = form(elements).add(
        attr("action", action),
        attr("method", $`method`)
    )
proc form*(action: string, `method`: HttpMethod|string, elements: varargs[HtmlElement]): HtmlElement = form(action, `method`, elements.toSeq()) ## Form element

proc search*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("search", $elements).forceClosingTag() ## Generic Search element
proc search*(elements: varargs[HtmlElement]): HtmlElement = search(elements.toSeq()) ## Generic Search element

proc button*(content: string): HtmlElement = newHtmlElement("button", content).forceClosingTag()
proc button*(content, onclick: string): HtmlElement = button(content).addattr("onclick", onclick)

proc fieldset*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("fieldset", $elements).forceClosingTag() ## Fieldset element
proc fieldset*(elements: varargs[HtmlElement]): HtmlElement = fieldset(elements.toSeq()) ## Fieldset element
proc datalist*(id: string, elements: seq[HtmlElement]): HtmlElement = newHtmlElement("datalist", @[attr("id", id)], $elements) ## Datalist element
proc datalist*(id: string, elements: varargs[HtmlElement]): HtmlElement = datalist(id, elements.toSeq()) ## Datalist element
proc legend*(text: string): HtmlElement = newHtmlElement("legend", text).forceClosingTag() ## Legend element
proc label*(`for`, text: string): HtmlElement = newHtmlElement("label", @[attr("for", `for`)], text).forceClosingTag() ## Label element

proc input*[T](`type`: MimeType|string, id, name: string, value: T = new T): HtmlElement = newHtmlElement("input",
    attr("type", $`type`), attr("id", id), attr("name", name), attr("value", value)
) ## Input element
proc input*[T](`type`: MimeType|string, idAndName: string, value: T = new T): HtmlElement = input($`type`, idAndName, idAndName, value) ## Input element (same id and name)

proc output*(name, `for`: string, content: string = ""): HtmlElement = newHtmlElement("output", content).add(
    attr("name", name),
    attr("for", `for`)
).forceClosingTag() ## Output element
proc output*(name: string, forIds: seq[string], content: string = ""): HtmlElement = output(name, forIds.join(" "), content) ## Output element

proc slot*(name, content: string): HtmlElement = newHtmlElement("slot", content).addattr("name", name) ## Web Component Slot element

proc caption*(text: string): HtmlElement = newHtmlElement("caption", text).forceClosingTag() ## Caption element
proc table*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("table", $elements).forceClosingTag() ## Table element
proc table*(elements: varargs[HtmlElement]): HtmlElement = table(elements.toSeq()) ## Table element
proc thead*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("thead", $elements).forceClosingTag() ## Table head element
proc thead*(elements: varargs[HtmlElement]): HtmlElement = thead(elements.toSeq()) ## Table head element
proc tbody*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tbody", $elements).forceClosingTag() ## Table body element
proc tbody*(elements: varargs[HtmlElement]): HtmlElement = tbody(elements.toSeq()) ## Table body element
proc tfoot*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tfoot", $elements).forceClosingTag() ## Table foot element
proc tfoot*(elements: varargs[HtmlElement]): HtmlElement = tfoot(elements.toSeq()) ## Table foot element
proc tr*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("tr", $elements).forceClosingTag() ## Table row element
proc tr*(elements: varargs[HtmlElement]): HtmlElement = tr(elements.toSeq()) ## Table row element
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
proc select*(name, id: string, elements: varargs[HtmlElement]): HtmlElement = select(name, id, elements.toSeq()) ## Select element

proc optgroup*(label: string, elements: seq[HtmlElement]): HtmlElement =
    ## Option group element
    newHtmlElement("optgroup", $elements)
        .addattr("label", label)
        .forceClosingTag()
proc optgroup*(label: string, elements: varargs[HtmlElement]): HtmlElement = optgroup(label, elements.toSeq()) ## Option group element
proc option*(value, text: string): HtmlElement =
    ## Option element
    newHtmlElement("option", text).addattr("value", value).forceClosingTag()

proc ol*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("ol", $elements).forceClosingTag() ## Ordered list element
proc ol*(elements: varargs[HtmlElement]): HtmlElement = ol(elements.toSeq()) ## Ordered list element
proc ul*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("ul", $elements).forceClosingTag() ## Unordered list element
proc ul*(elements: varargs[HtmlElement]): HtmlElement = ul(elements.toSeq()) ## Unordered list element

proc li*(text: string): HtmlElement = newHtmlElement("li", text).forceClosingTag() ## List item element

proc dl*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("dl", $elements).forceClosingTag() ## Description list element
proc dl*(elements: varargs[HtmlElement]): HtmlElement = dl(elements.toSeq()) ## Description list element
proc dt*(text: string): HtmlElement = newHtmlElement("dt", text).forceClosingTag() ## Description term element
proc dd*(text: string): HtmlElement = newHtmlElement("dd", text).forceClosingTag() ## Description details element

proc menu*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("menu", $elements).forceClosingTag() ## Menu element
proc menu*(elements: varargs[HtmlElement]): HtmlElement = menu(elements.toSeq()) ## Menu element

proc nav*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("nav", $elements).forceClosingTag() ## Nav element

proc dialog*(open: bool, elements: seq[HtmlElement]): HtmlElement =
    ## Dialog element
    result = newHtmlElement("dialog", $elements)
    if open: result.addattr("open")
proc dialog*(open: bool, elements: varargs[HtmlElement]): HtmlElement = dialog(open, elements.toSeq()) ## Dialog element

proc script*(code: string): HtmlElement = newHtmlElement("script", $code).forceClosingTag() ## Script element
proc importScript*(src: string): HtmlElement = script("").addattr("src", src) ## Script element (used for importing external scripts)
proc noscript*(text: string): HtmlElement = newHtmlElement("noscript", text).forceClosingTag() ## NoScript element

proc figure*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("figure", $elements).forceClosingTag() ## Figure element
proc figure*(elements: varargs[HtmlElement]): HtmlElement = figure(elements.toSeq()) ## Figure element
proc figcaption*(text: string): HtmlElement = newHtmlElement("figcaption", text).forceClosingTag() ## Figure caption element

proc figimage*(imgSrc, imgAlt, caption: string): HtmlElement =
    ## Image with caption - shortcut for `figure(img(imgSrc, imgAlt), figcaption(caption))`
    result = figure(
        img(imgSrc, imgAlt),
        figcaption(caption)
    )

proc iframe*(src: string): HtmlElement = newHtmlElement("iframe", @[attr("src", src)], " ") ## Iframe element

proc details*(elements: seq[HtmlElement]): HtmlElement = newHtmlElement("details", $elements) ## Details disclosure element
proc details*(elements: varargs[HtmlElement]): HtmlElement = details(elements.toSeq()) ## Details disclosure element
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
proc `div`*(elements: varargs[HtmlElement]): HtmlElement = `div`(elements.toSeq()) ## Constructor for div

proc `object`*(`type`: MimeType|string, src: string): HtmlElement = newHtmlElement("object").add(
    attr("type", `type`),
    attr("data", src)
).forceClosingTag() ## External object element
proc `object`*(`type`: MimeType|string, src: string, width, height: SomeInteger|string) = `object`(`type`, src).add(
    attr("width", $width),
    attr("height", $height)
) ## External object element

proc `template`*(id: string, elements: seq[HtmlElement]): HtmlElement = newHtmlElement("template", $elements).forceClosingTag() ## Content Template element
proc `template`*(id: string, elements: varargs[HtmlElement]): HtmlElement = `template`(id, elements.toSeq()) ## Content Template element

proc link*(rel, href: string): HtmlElement = newHtmlElement("link",
    attr("rel", rel), attr("href", href)
) ## Link for html head
proc link*(rel: string, `type`: MimeType|string, href: string): HtmlElement = newHtmlElement("link",
    attr("rel", rel), attr("type", $`type`), attr("href", href)
) ## Link for html head

proc base*(href, target: string): HtmlElement =
    ## Base element (specifies default URL and target for all links on a page)
    newHtmlElement("base", attr("href", href), attr("target", target))

proc stylesheet*(href: string): HtmlElement = link("stylesheet", href) ## Stylesheet for html head

proc icon*(href: string, `type`: MimeType|string): HtmlElement = link("icon", $`type`, href) ## Favicon for html head
proc icon*(href: string, `type`: MimeType|string, sizes: string): HtmlElement = newHtmlElement("link",
    attr("rel", "icon"), attr("type", $`type`), attr("sizes", sizes), attr("href", href)
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

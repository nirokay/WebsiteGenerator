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

proc htmlComment*(text: string): HtmlElement = rawText("<!-- " & text & " -->") ## HTML comment
proc comment*(text: string): HtmlElement {.deprecated: "use `htmlComment` instead".} = htmlComment(text) ## HTML comment

proc newHeader(content: string, number: int): HtmlElement = newHtmlElement(
    "h" & $number, content
).forceClosingTag() ## Generic builder for header
proc newHeader(children: seq[HtmlElement], number: int): HtmlElement = newHtmlElement(
    "h" & $number, children
).forceClosingTag() ## Generic builder for header

proc videoBuilder(video: HtmlElement, sources: seq[HtmlElement], alt: string): HtmlElement =
    ## Generic builder for video elements
    result = video
    result.children &= sources & @[rawText(alt)]

proc source*(src: string, `type`: MimeType|string): HtmlElement = newHtmlElement("source",
    attr("src", src),
    attr("type", $`type`)
) ## Source element

proc video*(width, height: string|SomeInteger, sources: seq[HtmlElement], alt: string, controls: bool = true): HtmlElement =
    ## Video element with multiple sources
    result = newHtmlElement("video", attr("width", $width), attr("height", $height))
    if controls: result.addattr("controls")
    return result.videoBuilder(sources, alt)
proc video*(width, height: string|SomeInteger, source: HtmlElement, alt: string, controls: bool = true): HtmlElement =
    ## Video element with single source
    result = video(width, height, @[source], alt, controls)
proc track*(src, kind, srclang, label: string): HtmlElement =
    ## Track element (subtitles for video/audio) -> uses .vtt files
    newHtmlElement("track", attr("src", src), attr("kind", kind), attr("srclang", srclang), attr("label", label))

proc audio*(src: string, controls: bool = true): HtmlElement =
    result = newHtmlElement("audio",
        attr("src", src)
    ).forceClosingTag()
    if controls: result.addattr("controls")

proc img*(src: string, alt: string): HtmlElement = newHtmlElement(
    "img",
    @[attr("src", src), attr("alt", alt)]
) ## Image element

proc embed*(`type`: MimeType|string, src: string, width, height: string|SomeInteger): HtmlElement =
    newHtmlElement("embed",
        attr("type", $`type`),
        attr("src", src),
        attr("width", $width),
        attr("height", $height)
    ) ## Embed external content element

proc picture*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("picture", children).forceClosingTag() ## Picture element
proc picture*(children: varargs[HtmlElement]): HtmlElement = picture(children.toSeq()) ## Picture element

proc map*(name: string, children: seq[HtmlElement]): HtmlElement =
    ## Image map element
    newHtmlElement("map", children)
        .addattr("name", name)
        .forceClosingTag()
proc map*(name: string, children: varargs[HtmlElement]): HtmlElement = map(name, children.toSeq()) ## Image map element

proc hgroup*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("hgroup", children) ## Heading Group element
proc hgroup*(children: varargs[HtmlElement]): HtmlElement = hgroup(children.toSeq()) ## Heading Group element

proc header*(content: string): HtmlElement = newHtmlElement("header", content).forceClosingTag() ## Header element
proc header*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("header", children).forceClosingTag() ## Header element
proc header*(children: varargs[HtmlElement]): HtmlElement = header(children.toSeq()) ## Header element
proc article*(content: string): HtmlElement = newHtmlElement("article", content).forceClosingTag() ## Article element
proc article*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("article", children).forceClosingTag() ## Article element
proc article*(children: varargs[HtmlElement]): HtmlElement = article(children.toSeq()) ## Article element
proc main*(content: string): HtmlElement = newHtmlElement("main", content).forceClosingTag() ## Main element
proc main*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("main", children).forceClosingTag() ## Main element
proc main*(children: varargs[HtmlElement]): HtmlElement = main(children.toSeq()) ## Main element
proc footer*(content: string): HtmlElement = newHtmlElement("footer", content).forceClosingTag() ## Footer element
proc footer*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("footer", children).forceClosingTag() ## Footer element
proc footer*(children: varargs[HtmlElement]): HtmlElement = footer(children.toSeq()) ## Footer element

proc h1*(text: string): HtmlElement = newHeader(text, 1) ## Html header 1 element
proc h1*(children: seq[HtmlElement]): HtmlElement = newHeader(children, 1) ## Html header 1 element
proc h1*(children: varargs[HtmlElement]): HtmlElement = h1(children.toSeq()) ## Html header 1 element
proc h2*(text: string): HtmlElement = newHeader(text, 2) ## Html header 2 element
proc h2*(children: seq[HtmlElement]): HtmlElement = newHeader(children, 2) ## Html header 2 element
proc h2*(children: varargs[HtmlElement]): HtmlElement = h2(children.toSeq()) ## Html header 2 element
proc h3*(text: string): HtmlElement = newHeader(text, 3) ## Html header 3 element
proc h3*(children: seq[HtmlElement]): HtmlElement = newHeader(children, 3) ## Html header 3 element
proc h3*(children: varargs[HtmlElement]): HtmlElement = h3(children.toSeq()) ## Html header 3 element
proc h4*(text: string): HtmlElement = newHeader(text, 4) ## Html header 4 element
proc h4*(children: seq[HtmlElement]): HtmlElement = newHeader(children, 4) ## Html header 4 element
proc h4*(children: varargs[HtmlElement]): HtmlElement = h4(children.toSeq()) ## Html header 4 element
proc h5*(text: string): HtmlElement = newHeader(text, 5) ## Html header 5 element
proc h5*(children: seq[HtmlElement]): HtmlElement = newHeader(children, 5) ## Html header 5 element
proc h5*(children: varargs[HtmlElement]): HtmlElement = h5(children.toSeq()) ## Html header 5 element
proc h6*(text: string): HtmlElement = newHeader(text, 6) ## Html header 6 element
proc h6*(children: seq[HtmlElement]): HtmlElement = newHeader(children, 6) ## Html header 6 element
proc h6*(children: varargs[HtmlElement]): HtmlElement = h6(children.toSeq()) ## Html header 6 element

proc br*(): HtmlElement = newHtmlElement("br") ## Line break element
proc p*(text: string): HtmlElement = newHtmlElement("p", text.replace("\n", $br())).forceClosingTag() ## Paragraph element
proc p*(text: seq[string]): HtmlElement = p(text.join($br())) ## Paragraph element
proc p*(text: varargs[string]): HtmlElement = p(text.toSeq()) ## Paragraph element
proc p*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("p", children).forceClosingTag() ## Paragraph element
proc p*(children: varargs[HtmlElement]): HtmlElement = p(children.toSeq()) ## Paragraph element
proc span*(text: string): HtmlElement = newHtmlElement("span", text).forceClosingTag() ## Content Span element
proc span*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("span", children).forceClosingTag() ## span element
proc span*(children: varargs[HtmlElement]): HtmlElement = span(children.toSeq()) ## span element
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


proc address*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("address", children).forceClosingTag() ## Address element
proc address*(children: varargs[HtmlElement]): HtmlElement = address(children.toSeq()) ## Address element

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

proc ruby*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("ruby", children).forceClosingTag() ## Ruby annotation element
proc ruby*(children: varargs[HtmlElement]): HtmlElement = ruby(children.toSeq()) ## Ruby annotation element

proc rp*(text: string): HtmlElement = newHtmlElement("rp", text) ## Ruby Fallback Parenthesis element
proc rt*(text: string): HtmlElement = newHtmlElement("rt", text) ## Ruby Text element

proc rtWithFallback*(text, alt: string): HtmlElement = rawText(text & $rp"(" & alt & $rp")")
proc rubyWithFallback*(stringWithFallback: varargs[array[2, string]]): HtmlElement =
    ## Ruby Text element with Ruby Fallback annotation
    ##
    ## Example: `rubyWithFallback(["漢", "kan"], ["字", "ji"])`
    var children: seq[HtmlElement]
    for child in stringWithFallback:
        children.add(
            rtWithFallback(child[0], child[1])
        )
    result = ruby(children)


proc section*(text: string): HtmlElement = newHtmlElement("section", text).forceClosingTag() ## Section element
proc section*(children: seq[HtmlElement]): HtmlElement = section(children) ## Section element
proc section*(children: varargs[HtmlElement]): HtmlElement = section(children.toSeq()) ## Section element
proc summary*(text: string): HtmlElement = newHtmlElement("summary", text).forceClosingTag() ## Summary element
proc summary*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("summary", children).forceClosingTag() ## summary element
proc summary*(children: varargs[HtmlElement]): HtmlElement = summary(children.toSeq()) ## summary element
proc code*(text: string): HtmlElement = newHtmlElement("code", text).forceClosingTag() ## Inline code element
proc abbr*(text: string): HtmlElement = newHtmlElement("abbr", text).forceClosingTag() ## Abbreviation element
proc samp*(text: string): HtmlElement = newHtmlElement("samp", text).forceClosingTag() ## Sample output element
proc aside*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("aside", children).forceClosingTag() ## Aside element
proc aside*(children: varargs[HtmlElement]): HtmlElement = aside(children.toSeq()) ## Aside element


proc del*(text: string): HtmlElement = newHtmlElement("del", text).forceClosingTag() ## Deleted text element
proc del*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("del", children).forceClosingTag() ## del element
proc del*(children: varargs[HtmlElement]): HtmlElement = del(children.toSeq()) ## del element
proc ins*(text: string): HtmlElement = newHtmlElement("ins", text).forceClosingTag() ## Inserted text element
proc ins*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("ins", children).forceClosingTag() ## ins element
proc ins*(children: varargs[HtmlElement]): HtmlElement = ins(children.toSeq()) ## ins element
proc dfn*(text: string): HtmlElement = newHtmlElement("dfn", text).forceClosingTag() ## Definition element
proc kbd*(text: string): HtmlElement = newHtmlElement("kbd", text).forceClosingTag() ## Define text as keyboard keys
proc bdi*(text: string): HtmlElement = newHtmlElement("bdi", text).forceClosingTag() ## Bidirectional Isolate element
proc bdo*(text, dir: string): HtmlElement = newHtmlElement("bdo", @[attr("dir", dir)], text).forceClosingTag() ## Bidirectional Text Override element (dir: "rtl" -> right-to-left, "ltr" -> left-to-right)
proc time*(text: string): HtmlElement = newHtmlElement("time", text).forceClosingTag().forceClosingTag() ## Time element
proc time*(datetime, text: string): HtmlElement = time(text).addattr("datetime", datetime).forceClosingTag() ## Time element with datetime attribute
proc data*(value, text: string): HtmlElement = newHtmlElement("data", @[attr("value", value)], text).forceClosingTag() ## Data element
proc data*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("data", children).forceClosingTag() ## data element
proc data*(children: varargs[HtmlElement]): HtmlElement = data(children.toSeq()) ## data element

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

proc form*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("form", children).forceClosingTag() ## Form element
proc form*(children: varargs[HtmlElement]): HtmlElement = form(children.toSeq()) ## Form element

proc form*(action: string, `method`: HttpMethod|string, children: seq[HtmlElement]): HtmlElement =
    ## Form element
    result = form(children).add(
        attr("action", action),
        attr("method", $`method`)
    )
proc form*(action: string, `method`: HttpMethod|string, children: varargs[HtmlElement]): HtmlElement = form(action, `method`, children.toSeq()) ## Form element

proc search*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("search", children).forceClosingTag() ## Generic Search element
proc search*(children: varargs[HtmlElement]): HtmlElement = search(children.toSeq()) ## Generic Search element

proc button*(content: string): HtmlElement = newHtmlElement("button", content).forceClosingTag()
proc button*(content, onclick: string): HtmlElement = button(content).addattr("onclick", onclick)

proc fieldset*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("fieldset", children).forceClosingTag() ## Fieldset element
proc fieldset*(children: varargs[HtmlElement]): HtmlElement = fieldset(children.toSeq()) ## Fieldset element
proc datalist*(id: string, children: seq[HtmlElement]): HtmlElement = newHtmlElement("datalist", @[attr("id", id)], children) ## Datalist element
proc datalist*(id: string, children: varargs[HtmlElement]): HtmlElement = datalist(id, children.toSeq()) ## Datalist element
proc legend*(text: string): HtmlElement = newHtmlElement("legend", text).forceClosingTag() ## Legend element
proc label*(`for`, text: string): HtmlElement = newHtmlElement("label", @[attr("for", `for`)], text).forceClosingTag() ## Label element

proc input*[T](`type`: MimeType|string, id: string, value: T): HtmlElement =
    ## Input element
    result = newHtmlElement("input",
        attr("type", `type`),
        attr("id", id)
    )
    if $value != "": result.addattr("value", $value)
proc input*(`type`: MimeType|string, id: string): HtmlElement = input(`type`, id, "") ## Input element

proc output*(name, `for`: string, content: string = ""): HtmlElement = newHtmlElement("output", content).add(
    attr("name", name),
    attr("for", `for`)
).forceClosingTag() ## Output element
proc output*(name: string, forIds: seq[string], content: string = ""): HtmlElement = output(name, forIds.join(" "), content) ## Output element
proc output*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("output", children).forceClosingTag() ## output element
proc output*(children: varargs[HtmlElement]): HtmlElement = output(children.toSeq()) ## output element

proc slot*(name, content: string): HtmlElement = newHtmlElement("slot", content).forceClosingTag().addattr("name", name) ## Web Component Slot element

proc caption*(text: string): HtmlElement = newHtmlElement("caption", text).forceClosingTag() ## Caption element
proc table*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("table", children).forceClosingTag() ## Table element
proc table*(children: varargs[HtmlElement]): HtmlElement = table(children.toSeq()) ## Table element
proc thead*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("thead", children).forceClosingTag() ## Table head element
proc thead*(children: varargs[HtmlElement]): HtmlElement = thead(children.toSeq()) ## Table head element
proc tbody*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("tbody", children).forceClosingTag() ## Table body element
proc tbody*(children: varargs[HtmlElement]): HtmlElement = tbody(children.toSeq()) ## Table body element
proc tfoot*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("tfoot", children).forceClosingTag() ## Table foot element
proc tfoot*(children: varargs[HtmlElement]): HtmlElement = tfoot(children.toSeq()) ## Table foot element
proc tr*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("tr", children).forceClosingTag() ## Table row element
proc tr*(children: varargs[HtmlElement]): HtmlElement = tr(children.toSeq()) ## Table row element

proc th*(text: string): HtmlElement = newHtmlElement("th", text).forceClosingTag() ## Table header cell element
proc th*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("th", children).forceClosingTag() ## th element
proc th*(children: varargs[HtmlElement]): HtmlElement = th(children.toSeq()) ## th element

proc td*(text: string): HtmlElement = newHtmlElement("td", text).forceClosingTag() ## Table data cell element
proc td*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("td", children).forceClosingTag() ## td element
proc td*(children: varargs[HtmlElement]): HtmlElement = td(children.toSeq()) ## td element

proc colgroup*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("colgroup", children).forceClosingTag() ## Table Column Group element
proc colgroup*(children: varargs[HtmlElement]): HtmlElement = colgroup(children.toSeq()) ## Table Column Group element
proc col*(): HtmlElement = newHtmlElement("col") ## Table column element
proc col*(span: string|SomeInteger): HtmlElement = col().addattr("span", span) ## Table column element

proc progress*(id: string, max: SomeInteger|string, text: string = ""): HtmlElement =
    ## Empty progress bar element
    newHtmlElement("progress", @[attr("max", $max), attr("id", id)], text).forceClosingTag()
proc progress*(id: string, value, max: SomeInteger|string, text: string = ""): HtmlElement =
    ## Progress bar element with value
    progress(id, max, text).attr(attr("value", $value))

proc select*(name, id: string, children: seq[HtmlElement]): HtmlElement =
    ## Select element
    newHtmlElement("select", @[attr("name", name), attr("id", id)], children).forceClosingTag()
proc select*(name, id: string, children: varargs[HtmlElement]): HtmlElement = select(name, id, children.toSeq()) ## Select element
proc select*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("select", children).forceClosingTag() ## select element
proc select*(children: varargs[HtmlElement]): HtmlElement = select(children.toSeq()) ## select element

proc optgroup*(label: string, children: seq[HtmlElement]): HtmlElement = newHtmlElement("optgroup", children).addattr("label", label).forceClosingTag() ## optgroup element
proc optgroup*(label: string, children: varargs[HtmlElement]): HtmlElement = optgroup(label, children.toSeq()) ## optgroup element
proc optgroup*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("optgroup", children).forceClosingTag() ## optgroup element
proc optgroup*(children: varargs[HtmlElement]): HtmlElement = optgroup(children.toSeq()) ## optgroup element
proc option*(value, text: string): HtmlElement =
    ## Option element
    newHtmlElement("option", text).addattr("value", value).forceClosingTag()

proc ol*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("ol", children).forceClosingTag() ## Ordered list element
proc ol*(children: varargs[HtmlElement]): HtmlElement = ol(children.toSeq()) ## Ordered list element
proc ul*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("ul", children).forceClosingTag() ## Unordered list element
proc ul*(children: varargs[HtmlElement]): HtmlElement = ul(children.toSeq()) ## Unordered list element

proc li*(text: string): HtmlElement = newHtmlElement("li", text).forceClosingTag() ## List item element
proc li*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("li", children).forceClosingTag() ## li element
proc li*(children: varargs[HtmlElement]): HtmlElement = li(children.toSeq()) ## li element

proc listGenerator[T](items: seq[T], listType: proc): HtmlElement =
    var listItems: seq[HtmlElement]
    for item in items:
        listItems.add li($item)
    result = listType(listItems)
proc unorderedList*[T](items: seq[T]): HtmlElement = listGenerator(items, ul) ## Unordered list elements
proc unorderedList*[T](items: varargs[T]): HtmlElement = unorderedList(items.toSeq()) ## Unordered list elements
proc orderedList*[T](items: seq[T]): HtmlElement = listGenerator(items, ol) ## Ordered list elements
proc orderedList*[T](items: varargs[T]): HtmlElement = unorderedList(items.toSeq()) ## Ordered list elements

proc dl*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("dl", children).forceClosingTag() ## Description list element
proc dl*(children: varargs[HtmlElement]): HtmlElement = dl(children.toSeq()) ## Description list element
proc dt*(text: string): HtmlElement = newHtmlElement("dt", text).forceClosingTag() ## Description term element
proc dd*(text: string): HtmlElement = newHtmlElement("dd", text).forceClosingTag() ## Description details element

proc menu*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("menu", children).forceClosingTag() ## Menu element
proc menu*(children: varargs[HtmlElement]): HtmlElement = menu(children.toSeq()) ## Menu element

proc nav*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("nav", children).forceClosingTag() ## Nav element
proc nav*(children: varargs[HtmlElement]): HtmlElement = nav(children.toSeq()) ## Nav element


proc dialog*(open: bool, children: seq[HtmlElement]): HtmlElement =
    ## Dialog element
    result = newHtmlElement("dialog", children)
    if open: result.addattr("open")
proc dialog*(open: bool, children: varargs[HtmlElement]): HtmlElement = dialog(open, children.toSeq()) ## Dialog element

proc script*(code: string): HtmlElement = newHtmlElement("script", $code).forceClosingTag() ## Script element
proc importScript*(src: string): HtmlElement = script("").addattr("src", src) ## Script element (used for importing external scripts)
proc noscript*(text: string): HtmlElement = newHtmlElement("noscript", text).forceClosingTag() ## NoScript element

proc figure*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("figure", children).forceClosingTag() ## Figure element
proc figure*(children: varargs[HtmlElement]): HtmlElement = figure(children.toSeq()) ## Figure element
proc figcaption*(text: string): HtmlElement = newHtmlElement("figcaption", text).forceClosingTag() ## Figure caption element

proc figimage*(imgSrc, imgAlt, caption: string): HtmlElement =
    ## Image with caption - shortcut for `figure(img(imgSrc, imgAlt), figcaption(caption))`
    result = figure(
        img(imgSrc, imgAlt),
        figcaption(caption)
    )

proc iframe*(src: string): HtmlElement = newHtmlElement("iframe").addattr("src", src).forceClosingTag() ## Iframe element

proc details*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("details", children).forceClosingTag() ## Details disclosure element
proc details*(children: varargs[HtmlElement]): HtmlElement = details(children.toSeq()) ## Details disclosure element
proc details*(header, content: string): HtmlElement = details(@[
    summary(header),
    rawText(content)
]) ## Details disclosure element

proc blockquote*(text: string, cite: string = ""): HtmlElement =
    ## Block quote element
    result = newHtmlElement("blockquote", text).forceClosingTag()
    if cite != "": result.addattr("cite", cite)
proc blockquote*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("blockquote", children).forceClosingTag() ## blockquote element
proc blockquote*(children: varargs[HtmlElement]): HtmlElement = blockquote(children.toSeq()) ## blockquote element

proc cite*(content: string): HtmlElement = newHtmlElement("cite", content).forceClosingTag() ## Citation element

proc `div`*(children: seq[HtmlElement]): HtmlElement = newHtmlElement("div", children).forceClosingTag() ## Constructor for div
proc `div`*(children: varargs[HtmlElement]): HtmlElement = `div`(children.toSeq()) ## Constructor for div

proc `object`*(`type`: MimeType|string, src: string): HtmlElement = newHtmlElement("object").add(
    attr("type", `type`),
    attr("data", src)
).forceClosingTag() ## External object element
proc `object`*(`type`: MimeType|string, src: string, width, height: SomeInteger|string) = `object`(`type`, src).add(
    attr("width", $width),
    attr("height", $height)
) ## External object element

proc `template`*(id: string, children: seq[HtmlElement]): HtmlElement = newHtmlElement("template", children).forceClosingTag() ## Content Template element
proc `template`*(id: string, children: varargs[HtmlElement]): HtmlElement = `template`(id, children.toSeq()) ## Content Template element

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


# OG stuff (https://ogp.me/)

proc og*(property, content: string): HtmlElement =
    ## Generates an OG (OpenGraph protocol) tag, adds the `og:` substring automatically
    ##
    ## `$og("title", "My Page")` -> `<meta property="og:title" content="My Page">`
    result = meta(@[
        ["property", "og:" & property],
        ["content", content]
    ])
proc ogArray*(property: string, contents: seq[string]): seq[HtmlElement] =
    ## Generates an OG "array"
    ##
    ## Basically generates multiple OG elements
    for content in contents:
        result.add og(property, content)
proc ogArray*(property: string, contents: varargs[string]): seq[HtmlElement] =
    ## Generates an OG "array"
    ##
    ## Basically generates multiple OG elements
    result = ogArray(property, contents.toSeq())

proc ogTitle*(text: string): HtmlElement = og("title", text) ## OpenGraph protocol title
proc ogDescription*(text: string): HtmlElement = og("description", text) ## OpenGraph protocol description

proc ogImage*(href: string): HtmlElement = og("image", href) ## OpenGraph protocol image
proc ogImageUrl*(href: string): HtmlElement = og("image:url", href) ## OpenGraph protocol image url
proc ogImageSecureUrl*(href: string): HtmlElement = og("image:secure_url", href) ## OpenGraph protocol secure url
proc ogImageType*(`type`: string|MimeType): HtmlElement = og("image:type", `type`) ## OpenGraph protocol image type
proc ogImageWidth*(width: string|int): HtmlElement = og("image:width", $width) ## OpenGraph protocol image width
proc ogImageHeight*(height: string|int): HtmlElement = og("image:height", $height) ## OpenGraph protocol image width
proc ogImageAlt*(text: string): HtmlElement = og("image:alt", text) ## OpenGraph protocol image alt text

proc ogVideo*(href: string): HtmlElement = og("video", href) ## OpenGraph protocol video
proc ogVideoUrl*(href: string): HtmlElement = og("video:url", href) ## OpenGraph protocol video url
proc ogVideoSecureUrl*(href: string): HtmlElement = og("video:secure_url", href) ## OpenGraph protocol secure url
proc ogVideoType*(`type`: string|MimeType): HtmlElement = og("video:type", `type`) ## OpenGraph protocol video type
proc ogVideoWidth*(width: string|int): HtmlElement = og("video:width", $width) ## OpenGraph protocol video width
proc ogVideoHeight*(height: string|int): HtmlElement = og("video:height", $height) ## OpenGraph protocol video width
proc ogVideoAlt*(text: string): HtmlElement = og("video:alt", text) ## OpenGraph protocol video alt text

proc ogAudio*(href: string): HtmlElement = og("audio", href) ## OpenGraph protocol audio
proc ogAudioSecureUrl*(href: string): HtmlElement = og("audio:secure_url", href) ## OpenGraph protocol secure url
proc ogAudioType*(`type`: string|MimeType): HtmlElement = og("audio:type", `type`) ## OpenGraph protocol audio type

proc ogType*(`type`: string): HtmlElement = og("type", $`type`) ## OpenGraph protocol type
proc ogNamespacePrefix*(namespace, href: string): HtmlElement = newHtmlElement("head").addattr(
    "prefix",
    namespace & ": " & href
) ## OpenGraph protocol namespace prefix

proc ogUrl*(href: string): HtmlElement = og("url", href) ## OpenGraph protocol url

proc ogSiteName*(name: string): HtmlElement = og("site_name", name) ## OpenGraph protocol site name

type OgDeterminer* = enum
    determinerA = "a",
    determinerAn = "an",
    deterninerThe = "the",
    determinerEmpty = "",
    determinerAuto = "auto"
proc ogDeterminer*(determiner: string|OgDeterminer): HtmlElement = og("determiner", $determiner) ## OpenGraph protocol determiner

proc ogLocale*(locale: string): HtmlElement = og("locale", locale) ## OpenGraph protocol locale
proc ogLocaleAlternate*(locales: seq[string]): seq[HtmlElement] = ogArray("locale:alternative", locales) ## OpenGraph protocol locale alternative
proc ogLocaleAlternate*(locales: varargs[string]): seq[HtmlElement] = ogLocaleAlternate(locales.toSeq()) ## OpenGraph protocol locale alternative

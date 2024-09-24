## Attributes Module
## =================
##
## Automatically generated procs for setting single HTML attributes
##
## Reference:
## https://www.w3schools.com/tags/ref_attributes.asp
##
## Html table converted to csv via:
## https://www.convertcsv.com/html-table-to-csv.htm

import generators


proc setAccept*(element: var HtmlElement, value: string = "") =
    ## Sets the `accept` attribute for `<input>` elements
    element.addattr("accept", value)
proc setAccept*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `accept` attribute for `<input>` elements
    result = element.addattr("accept", value)

proc setAcceptCharset*(element: var HtmlElement, value: string = "") =
    ## Sets the `accept-charset` attribute for `<form>` elements
    element.addattr("accept-charset", value)
proc setAcceptCharset*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `accept-charset` attribute for `<form>` elements
    result = element.addattr("accept-charset", value)

proc setAccesskey*(element: var HtmlElement, value: string = "") =
    ## Sets the `accesskey` attribute for all elements
    element.addattr("accesskey", value)
proc setAccesskey*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `accesskey` attribute for all elements
    result = element.addattr("accesskey", value)

proc setAction*(element: var HtmlElement, value: string = "") =
    ## Sets the `action` attribute for `<form>` elements
    element.addattr("action", value)
proc setAction*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `action` attribute for `<form>` elements
    result = element.addattr("action", value)

proc setAlign*(element: var HtmlElement, value: string = "") {.deprecated: "use `CSS` instead".}=
    ## Sets the `align` attribute for non-HTML5 elements
    element.addattr("align", value)
proc setAlign*(element: HtmlElement, value: string = ""): HtmlElement {.deprecated: "use `CSS` instead".}=
    ## Sets the `align` attribute for non-HTML5 elements
    result = element.addattr("align", value)

proc setAlt*(element: var HtmlElement, value: string = "") =
    ## Sets the `alt` attribute for `<area>, <img>, <input>` elements
    element.addattr("alt", value)
proc setAlt*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `alt` attribute for `<area>, <img>, <input>` elements
    result = element.addattr("alt", value)

proc setAsync*(element: var HtmlElement, value: string = "") =
    ## Sets the `async` attribute for `<script>` elements
    element.addattr("async", value)
proc setAsync*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `async` attribute for `<script>` elements
    result = element.addattr("async", value)

proc setAutocomplete*(element: var HtmlElement, value: string = "") =
    ## Sets the `autocomplete` attribute for `<form>, <input>` elements
    element.addattr("autocomplete", value)
proc setAutocomplete*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `autocomplete` attribute for `<form>, <input>` elements
    result = element.addattr("autocomplete", value)

proc setAutofocus*(element: var HtmlElement, value: string = "") =
    ## Sets the `autofocus` attribute for `<button>, <input>, <select>, <textarea>` elements
    element.addattr("autofocus", value)
proc setAutofocus*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `autofocus` attribute for `<button>, <input>, <select>, <textarea>` elements
    result = element.addattr("autofocus", value)

proc setAutoplay*(element: var HtmlElement, value: string = "") =
    ## Sets the `autoplay` attribute for `<audio>, <video>` elements
    element.addattr("autoplay", value)
proc setAutoplay*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `autoplay` attribute for `<audio>, <video>` elements
    result = element.addattr("autoplay", value)

proc setBgcolor*(element: var HtmlElement, value: string = "") {.deprecated: "use `CSS` instead".}=
    ## Sets the `bgcolor` attribute for non-HTML5 elements
    element.addattr("bgcolor", value)
proc setBgcolor*(element: HtmlElement, value: string = ""): HtmlElement {.deprecated: "use `CSS` instead".}=
    ## Sets the `bgcolor` attribute for non-HTML5 elements
    result = element.addattr("bgcolor", value)

proc setBorder*(element: var HtmlElement, value: string = "") {.deprecated: "use `CSS` instead".}=
    ## Sets the `border` attribute for non-HTML5 elements
    element.addattr("border", value)
proc setBorder*(element: HtmlElement, value: string = ""): HtmlElement {.deprecated: "use `CSS` instead".}=
    ## Sets the `border` attribute for non-HTML5 elements
    result = element.addattr("border", value)

proc setCharset*(element: var HtmlElement, value: string = "") =
    ## Sets the `charset` attribute for `<meta>, <script>` elements
    element.addattr("charset", value)
proc setCharset*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `charset` attribute for `<meta>, <script>` elements
    result = element.addattr("charset", value)

proc setChecked*(element: var HtmlElement, value: string = "") =
    ## Sets the `checked` attribute for `<input>` elements
    element.addattr("checked", value)
proc setChecked*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `checked` attribute for `<input>` elements
    result = element.addattr("checked", value)

proc setCite*(element: var HtmlElement, value: string = "") =
    ## Sets the `cite` attribute for `<blockquote>, <del>, <ins>, <q>` elements
    element.addattr("cite", value)
proc setCite*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `cite` attribute for `<blockquote>, <del>, <ins>, <q>` elements
    result = element.addattr("cite", value)

proc setColor*(element: var HtmlElement, value: string = "") {.deprecated: "use `CSS` instead".}=
    ## Sets the `color` attribute for non-HTML5 elements
    element.addattr("color", value)
proc setColor*(element: HtmlElement, value: string = ""): HtmlElement {.deprecated: "use `CSS` instead".}=
    ## Sets the `color` attribute for non-HTML5 elements
    result = element.addattr("color", value)

proc setCols*(element: var HtmlElement, value: string = "") =
    ## Sets the `cols` attribute for `<textarea>` elements
    element.addattr("cols", value)
proc setCols*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `cols` attribute for `<textarea>` elements
    result = element.addattr("cols", value)

proc setColspan*(element: var HtmlElement, value: string = "") =
    ## Sets the `colspan` attribute for `<td>, <th>` elements
    element.addattr("colspan", value)
proc setColspan*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `colspan` attribute for `<td>, <th>` elements
    result = element.addattr("colspan", value)

proc setContent*(element: var HtmlElement, value: string = "") =
    ## Sets the `content` attribute for `<meta>` elements
    element.addattr("content", value)
proc setContent*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `content` attribute for `<meta>` elements
    result = element.addattr("content", value)

proc setContenteditable*(element: var HtmlElement, value: string = "") =
    ## Sets the `contenteditable` attribute for all elements
    element.addattr("contenteditable", value)
proc setContenteditable*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `contenteditable` attribute for all elements
    result = element.addattr("contenteditable", value)

proc setControls*(element: var HtmlElement, value: string = "") =
    ## Sets the `controls` attribute for `<audio>, <video>` elements
    element.addattr("controls", value)
proc setControls*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `controls` attribute for `<audio>, <video>` elements
    result = element.addattr("controls", value)

proc setCoords*(element: var HtmlElement, value: string = "") =
    ## Sets the `coords` attribute for `<area>` elements
    element.addattr("coords", value)
proc setCoords*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `coords` attribute for `<area>` elements
    result = element.addattr("coords", value)

proc setData*(element: var HtmlElement, value: string = "") =
    ## Sets the `data` attribute for `<object>` elements
    element.addattr("data", value)
proc setData*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `data` attribute for `<object>` elements
    result = element.addattr("data", value)

proc setDatetime*(element: var HtmlElement, value: string = "") =
    ## Sets the `datetime` attribute for `<del>, <ins>, <time>` elements
    element.addattr("datetime", value)
proc setDatetime*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `datetime` attribute for `<del>, <ins>, <time>` elements
    result = element.addattr("datetime", value)

proc setDefault*(element: var HtmlElement, value: string = "") =
    ## Sets the `default` attribute for `<track>` elements
    element.addattr("default", value)
proc setDefault*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `default` attribute for `<track>` elements
    result = element.addattr("default", value)

proc setDefer*(element: var HtmlElement, value: string = "") =
    ## Sets the `defer` attribute for `<script>` elements
    element.addattr("defer", value)
proc setDefer*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `defer` attribute for `<script>` elements
    result = element.addattr("defer", value)

proc setDir*(element: var HtmlElement, value: string = "") =
    ## Sets the `dir` attribute for all elements
    element.addattr("dir", value)
proc setDir*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `dir` attribute for all elements
    result = element.addattr("dir", value)

proc setDirname*(element: var HtmlElement, value: string = "") =
    ## Sets the `dirname` attribute for `<input>, <textarea>` elements
    element.addattr("dirname", value)
proc setDirname*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `dirname` attribute for `<input>, <textarea>` elements
    result = element.addattr("dirname", value)

proc setDisabled*(element: var HtmlElement, value: string = "") =
    ## Sets the `disabled` attribute for `<button>, <fieldset>, <input>, <optgroup>, <option>, <select>, <textarea>` elements
    element.addattr("disabled", value)
proc setDisabled*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `disabled` attribute for `<button>, <fieldset>, <input>, <optgroup>, <option>, <select>, <textarea>` elements
    result = element.addattr("disabled", value)

proc setDownload*(element: var HtmlElement, value: string = "") =
    ## Sets the `download` attribute for `<a>, <area>` elements
    element.addattr("download", value)
proc setDownload*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `download` attribute for `<a>, <area>` elements
    result = element.addattr("download", value)

proc setDraggable*(element: var HtmlElement, value: string = "") =
    ## Sets the `draggable` attribute for all elements
    element.addattr("draggable", value)
proc setDraggable*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `draggable` attribute for all elements
    result = element.addattr("draggable", value)

proc setEnctype*(element: var HtmlElement, value: string = "") =
    ## Sets the `enctype` attribute for `<form>` elements
    element.addattr("enctype", value)
proc setEnctype*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `enctype` attribute for `<form>` elements
    result = element.addattr("enctype", value)

proc setEnterkeyhint*(element: var HtmlElement, value: string = "") =
    ## Sets the `enterkeyhint` attribute for all elements
    element.addattr("enterkeyhint", value)
proc setEnterkeyhint*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `enterkeyhint` attribute for all elements
    result = element.addattr("enterkeyhint", value)

proc setFor*(element: var HtmlElement, value: string = "") =
    ## Sets the `for` attribute for `<label>, <output>` elements
    element.addattr("for", value)
proc setFor*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `for` attribute for `<label>, <output>` elements
    result = element.addattr("for", value)

proc setForm*(element: var HtmlElement, value: string = "") =
    ## Sets the `form` attribute for `<button>, <fieldset>, <input>, <label>, <meter>, <object>, <output>, <select>, <textarea>` elements
    element.addattr("form", value)
proc setForm*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `form` attribute for `<button>, <fieldset>, <input>, <label>, <meter>, <object>, <output>, <select>, <textarea>` elements
    result = element.addattr("form", value)

proc setFormaction*(element: var HtmlElement, value: string = "") =
    ## Sets the `formaction` attribute for `<button>, <input>` elements
    element.addattr("formaction", value)
proc setFormaction*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `formaction` attribute for `<button>, <input>` elements
    result = element.addattr("formaction", value)

proc setHeaders*(element: var HtmlElement, value: string = "") =
    ## Sets the `headers` attribute for `<td>, <th>` elements
    element.addattr("headers", value)
proc setHeaders*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `headers` attribute for `<td>, <th>` elements
    result = element.addattr("headers", value)

proc setHeight*(element: var HtmlElement, value: string = "") =
    ## Sets the `height` attribute for `<canvas>, <embed>, <iframe>, <img>, <input>, <object>, <video>` elements
    element.addattr("height", value)
proc setHeight*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `height` attribute for `<canvas>, <embed>, <iframe>, <img>, <input>, <object>, <video>` elements
    result = element.addattr("height", value)

proc setHidden*(element: var HtmlElement, value: string = "") =
    ## Sets the `hidden` attribute for all elements
    element.addattr("hidden", value)
proc setHidden*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `hidden` attribute for all elements
    result = element.addattr("hidden", value)

proc setHigh*(element: var HtmlElement, value: string = "") =
    ## Sets the `high` attribute for `<meter>` elements
    element.addattr("high", value)
proc setHigh*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `high` attribute for `<meter>` elements
    result = element.addattr("high", value)

proc setHref*(element: var HtmlElement, value: string = "") =
    ## Sets the `href` attribute for `<a>, <area>, <base>, <link>` elements
    element.addattr("href", value)
proc setHref*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `href` attribute for `<a>, <area>, <base>, <link>` elements
    result = element.addattr("href", value)

proc setHreflang*(element: var HtmlElement, value: string = "") =
    ## Sets the `hreflang` attribute for `<a>, <area>, <link>` elements
    element.addattr("hreflang", value)
proc setHreflang*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `hreflang` attribute for `<a>, <area>, <link>` elements
    result = element.addattr("hreflang", value)

proc setHttpEquiv*(element: var HtmlElement, value: string = "") =
    ## Sets the `http-equiv` attribute for `<meta>` elements
    element.addattr("http-equiv", value)
proc setHttpEquiv*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `http-equiv` attribute for `<meta>` elements
    result = element.addattr("http-equiv", value)

proc setId*(element: var HtmlElement, value: string = "") =
    ## Sets the `id` attribute for all elements
    element.addattr("id", value)
proc setId*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `id` attribute for all elements
    result = element.addattr("id", value)

proc setInert*(element: var HtmlElement, value: string = "") =
    ## Sets the `inert` attribute for all elements
    element.addattr("inert", value)
proc setInert*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `inert` attribute for all elements
    result = element.addattr("inert", value)

proc setInputmode*(element: var HtmlElement, value: string = "") =
    ## Sets the `inputmode` attribute for all elements
    element.addattr("inputmode", value)
proc setInputmode*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `inputmode` attribute for all elements
    result = element.addattr("inputmode", value)

proc setIsmap*(element: var HtmlElement, value: string = "") =
    ## Sets the `ismap` attribute for `<img>` elements
    element.addattr("ismap", value)
proc setIsmap*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ismap` attribute for `<img>` elements
    result = element.addattr("ismap", value)

proc setKind*(element: var HtmlElement, value: string = "") =
    ## Sets the `kind` attribute for `<track>` elements
    element.addattr("kind", value)
proc setKind*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `kind` attribute for `<track>` elements
    result = element.addattr("kind", value)

proc setLabel*(element: var HtmlElement, value: string = "") =
    ## Sets the `label` attribute for `<track>, <option>, <optgroup>` elements
    element.addattr("label", value)
proc setLabel*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `label` attribute for `<track>, <option>, <optgroup>` elements
    result = element.addattr("label", value)

proc setLang*(element: var HtmlElement, value: string = "") =
    ## Sets the `lang` attribute for all elements
    element.addattr("lang", value)
proc setLang*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `lang` attribute for all elements
    result = element.addattr("lang", value)

proc setList*(element: var HtmlElement, value: string = "") =
    ## Sets the `list` attribute for `<input>` elements
    element.addattr("list", value)
proc setList*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `list` attribute for `<input>` elements
    result = element.addattr("list", value)

proc setLoop*(element: var HtmlElement, value: string = "") =
    ## Sets the `loop` attribute for `<audio>, <video>` elements
    element.addattr("loop", value)
proc setLoop*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `loop` attribute for `<audio>, <video>` elements
    result = element.addattr("loop", value)

proc setLow*(element: var HtmlElement, value: string = "") =
    ## Sets the `low` attribute for `<meter>` elements
    element.addattr("low", value)
proc setLow*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `low` attribute for `<meter>` elements
    result = element.addattr("low", value)

proc setMax*(element: var HtmlElement, value: string = "") =
    ## Sets the `max` attribute for `<input>, <meter>, <progress>` elements
    element.addattr("max", value)
proc setMax*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `max` attribute for `<input>, <meter>, <progress>` elements
    result = element.addattr("max", value)

proc setMaxlength*(element: var HtmlElement, value: string = "") =
    ## Sets the `maxlength` attribute for `<input>, <textarea>` elements
    element.addattr("maxlength", value)
proc setMaxlength*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `maxlength` attribute for `<input>, <textarea>` elements
    result = element.addattr("maxlength", value)

proc setMedia*(element: var HtmlElement, value: string = "") =
    ## Sets the `media` attribute for `<a>, <area>, <link>, <source>, <style>` elements
    element.addattr("media", value)
proc setMedia*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `media` attribute for `<a>, <area>, <link>, <source>, <style>` elements
    result = element.addattr("media", value)

proc setMethod*(element: var HtmlElement, value: string = "") =
    ## Sets the `method` attribute for `<form>` elements
    element.addattr("method", value)
proc setMethod*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `method` attribute for `<form>` elements
    result = element.addattr("method", value)

proc setMin*(element: var HtmlElement, value: string = "") =
    ## Sets the `min` attribute for `<input>, <meter>` elements
    element.addattr("min", value)
proc setMin*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `min` attribute for `<input>, <meter>` elements
    result = element.addattr("min", value)

proc setMultiple*(element: var HtmlElement, value: string = "") =
    ## Sets the `multiple` attribute for `<input>, <select>` elements
    element.addattr("multiple", value)
proc setMultiple*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `multiple` attribute for `<input>, <select>` elements
    result = element.addattr("multiple", value)

proc setMuted*(element: var HtmlElement, value: string = "") =
    ## Sets the `muted` attribute for `<video>, <audio>` elements
    element.addattr("muted", value)
proc setMuted*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `muted` attribute for `<video>, <audio>` elements
    result = element.addattr("muted", value)

proc setName*(element: var HtmlElement, value: string = "") =
    ## Sets the `name` attribute for `<button>, <fieldset>, <form>, <iframe>, <input>, <map>, <meta>, <object>, <output>, <param>, <select>, <textarea>` elements
    element.addattr("name", value)
proc setName*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `name` attribute for `<button>, <fieldset>, <form>, <iframe>, <input>, <map>, <meta>, <object>, <output>, <param>, <select>, <textarea>` elements
    result = element.addattr("name", value)

proc setNovalidate*(element: var HtmlElement, value: string = "") =
    ## Sets the `novalidate` attribute for `<form>` elements
    element.addattr("novalidate", value)
proc setNovalidate*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `novalidate` attribute for `<form>` elements
    result = element.addattr("novalidate", value)

proc setOnabort*(element: var HtmlElement, value: string = "") =
    ## Sets the `onabort` attribute for `<audio>, <embed>, <img>, <object>, <video>` elements
    element.addattr("onabort", value)
proc setOnabort*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onabort` attribute for `<audio>, <embed>, <img>, <object>, <video>` elements
    result = element.addattr("onabort", value)

proc setOnafterprint*(element: var HtmlElement, value: string = "") =
    ## Sets the `onafterprint` attribute for `<body>` elements
    element.addattr("onafterprint", value)
proc setOnafterprint*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onafterprint` attribute for `<body>` elements
    result = element.addattr("onafterprint", value)

proc setOnbeforeprint*(element: var HtmlElement, value: string = "") =
    ## Sets the `onbeforeprint` attribute for `<body>` elements
    element.addattr("onbeforeprint", value)
proc setOnbeforeprint*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onbeforeprint` attribute for `<body>` elements
    result = element.addattr("onbeforeprint", value)

proc setOnbeforeunload*(element: var HtmlElement, value: string = "") =
    ## Sets the `onbeforeunload` attribute for `<body>` elements
    element.addattr("onbeforeunload", value)
proc setOnbeforeunload*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onbeforeunload` attribute for `<body>` elements
    result = element.addattr("onbeforeunload", value)

proc setOnblur*(element: var HtmlElement, value: string = "") =
    ## Sets the `onblur` attribute for all visible elements
    element.addattr("onblur", value)
proc setOnblur*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onblur` attribute for all visible elements
    result = element.addattr("onblur", value)

proc setOncanplay*(element: var HtmlElement, value: string = "") =
    ## Sets the `oncanplay` attribute for `<audio>, <embed>, <object>, <video>` elements
    element.addattr("oncanplay", value)
proc setOncanplay*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oncanplay` attribute for `<audio>, <embed>, <object>, <video>` elements
    result = element.addattr("oncanplay", value)

proc setOncanplaythrough*(element: var HtmlElement, value: string = "") =
    ## Sets the `oncanplaythrough` attribute for `<audio>, <video>` elements
    element.addattr("oncanplaythrough", value)
proc setOncanplaythrough*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oncanplaythrough` attribute for `<audio>, <video>` elements
    result = element.addattr("oncanplaythrough", value)

proc setOnchange*(element: var HtmlElement, value: string = "") =
    ## Sets the `onchange` attribute for all visible elements
    element.addattr("onchange", value)
proc setOnchange*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onchange` attribute for all visible elements
    result = element.addattr("onchange", value)

proc setOnclick*(element: var HtmlElement, value: string = "") =
    ## Sets the `onclick` attribute for all visible elements
    element.addattr("onclick", value)
proc setOnclick*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onclick` attribute for all visible elements
    result = element.addattr("onclick", value)

proc setOncontextmenu*(element: var HtmlElement, value: string = "") =
    ## Sets the `oncontextmenu` attribute for all visible elements
    element.addattr("oncontextmenu", value)
proc setOncontextmenu*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oncontextmenu` attribute for all visible elements
    result = element.addattr("oncontextmenu", value)

proc setOncopy*(element: var HtmlElement, value: string = "") =
    ## Sets the `oncopy` attribute for all visible elements
    element.addattr("oncopy", value)
proc setOncopy*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oncopy` attribute for all visible elements
    result = element.addattr("oncopy", value)

proc setOncuechange*(element: var HtmlElement, value: string = "") =
    ## Sets the `oncuechange` attribute for `<track>` elements
    element.addattr("oncuechange", value)
proc setOncuechange*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oncuechange` attribute for `<track>` elements
    result = element.addattr("oncuechange", value)

proc setOncut*(element: var HtmlElement, value: string = "") =
    ## Sets the `oncut` attribute for all visible elements
    element.addattr("oncut", value)
proc setOncut*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oncut` attribute for all visible elements
    result = element.addattr("oncut", value)

proc setOndblclick*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondblclick` attribute for all visible elements
    element.addattr("ondblclick", value)
proc setOndblclick*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondblclick` attribute for all visible elements
    result = element.addattr("ondblclick", value)

proc setOndrag*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondrag` attribute for all visible elements
    element.addattr("ondrag", value)
proc setOndrag*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondrag` attribute for all visible elements
    result = element.addattr("ondrag", value)

proc setOndragend*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondragend` attribute for all visible elements
    element.addattr("ondragend", value)
proc setOndragend*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondragend` attribute for all visible elements
    result = element.addattr("ondragend", value)

proc setOndragenter*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondragenter` attribute for all visible elements
    element.addattr("ondragenter", value)
proc setOndragenter*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondragenter` attribute for all visible elements
    result = element.addattr("ondragenter", value)

proc setOndragleave*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondragleave` attribute for all visible elements
    element.addattr("ondragleave", value)
proc setOndragleave*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondragleave` attribute for all visible elements
    result = element.addattr("ondragleave", value)

proc setOndragover*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondragover` attribute for all visible elements
    element.addattr("ondragover", value)
proc setOndragover*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondragover` attribute for all visible elements
    result = element.addattr("ondragover", value)

proc setOndragstart*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondragstart` attribute for all visible elements
    element.addattr("ondragstart", value)
proc setOndragstart*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondragstart` attribute for all visible elements
    result = element.addattr("ondragstart", value)

proc setOndrop*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondrop` attribute for all visible elements
    element.addattr("ondrop", value)
proc setOndrop*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondrop` attribute for all visible elements
    result = element.addattr("ondrop", value)

proc setOndurationchange*(element: var HtmlElement, value: string = "") =
    ## Sets the `ondurationchange` attribute for `<audio>, <video>` elements
    element.addattr("ondurationchange", value)
proc setOndurationchange*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ondurationchange` attribute for `<audio>, <video>` elements
    result = element.addattr("ondurationchange", value)

proc setOnemptied*(element: var HtmlElement, value: string = "") =
    ## Sets the `onemptied` attribute for `<audio>, <video>` elements
    element.addattr("onemptied", value)
proc setOnemptied*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onemptied` attribute for `<audio>, <video>` elements
    result = element.addattr("onemptied", value)

proc setOnended*(element: var HtmlElement, value: string = "") =
    ## Sets the `onended` attribute for `<audio>, <video>` elements
    element.addattr("onended", value)
proc setOnended*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onended` attribute for `<audio>, <video>` elements
    result = element.addattr("onended", value)

proc setOnerror*(element: var HtmlElement, value: string = "") =
    ## Sets the `onerror` attribute for `<audio>, <body>, <embed>, <img>, <object>, <script>, <style>, <video>` elements
    element.addattr("onerror", value)
proc setOnerror*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onerror` attribute for `<audio>, <body>, <embed>, <img>, <object>, <script>, <style>, <video>` elements
    result = element.addattr("onerror", value)

proc setOnfocus*(element: var HtmlElement, value: string = "") =
    ## Sets the `onfocus` attribute for all visible elements
    element.addattr("onfocus", value)
proc setOnfocus*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onfocus` attribute for all visible elements
    result = element.addattr("onfocus", value)

proc setOnhashchange*(element: var HtmlElement, value: string = "") =
    ## Sets the `onhashchange` attribute for `<body>` elements
    element.addattr("onhashchange", value)
proc setOnhashchange*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onhashchange` attribute for `<body>` elements
    result = element.addattr("onhashchange", value)

proc setOninput*(element: var HtmlElement, value: string = "") =
    ## Sets the `oninput` attribute for all visible elements
    element.addattr("oninput", value)
proc setOninput*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oninput` attribute for all visible elements
    result = element.addattr("oninput", value)

proc setOninvalid*(element: var HtmlElement, value: string = "") =
    ## Sets the `oninvalid` attribute for all visible elements
    element.addattr("oninvalid", value)
proc setOninvalid*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `oninvalid` attribute for all visible elements
    result = element.addattr("oninvalid", value)

proc setOnkeydown*(element: var HtmlElement, value: string = "") =
    ## Sets the `onkeydown` attribute for all visible elements
    element.addattr("onkeydown", value)
proc setOnkeydown*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onkeydown` attribute for all visible elements
    result = element.addattr("onkeydown", value)

proc setOnkeypress*(element: var HtmlElement, value: string = "") =
    ## Sets the `onkeypress` attribute for all visible elements
    element.addattr("onkeypress", value)
proc setOnkeypress*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onkeypress` attribute for all visible elements
    result = element.addattr("onkeypress", value)

proc setOnkeyup*(element: var HtmlElement, value: string = "") =
    ## Sets the `onkeyup` attribute for all visible elements
    element.addattr("onkeyup", value)
proc setOnkeyup*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onkeyup` attribute for all visible elements
    result = element.addattr("onkeyup", value)

proc setOnload*(element: var HtmlElement, value: string = "") =
    ## Sets the `onload` attribute for `<body>, <iframe>, <img>, <input>, <link>, <script>, <style>` elements
    element.addattr("onload", value)
proc setOnload*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onload` attribute for `<body>, <iframe>, <img>, <input>, <link>, <script>, <style>` elements
    result = element.addattr("onload", value)

proc setOnloadeddata*(element: var HtmlElement, value: string = "") =
    ## Sets the `onloadeddata` attribute for `<audio>, <video>` elements
    element.addattr("onloadeddata", value)
proc setOnloadeddata*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onloadeddata` attribute for `<audio>, <video>` elements
    result = element.addattr("onloadeddata", value)

proc setOnloadedmetadata*(element: var HtmlElement, value: string = "") =
    ## Sets the `onloadedmetadata` attribute for `<audio>, <video>` elements
    element.addattr("onloadedmetadata", value)
proc setOnloadedmetadata*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onloadedmetadata` attribute for `<audio>, <video>` elements
    result = element.addattr("onloadedmetadata", value)

proc setOnloadstart*(element: var HtmlElement, value: string = "") =
    ## Sets the `onloadstart` attribute for `<audio>, <video>` elements
    element.addattr("onloadstart", value)
proc setOnloadstart*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onloadstart` attribute for `<audio>, <video>` elements
    result = element.addattr("onloadstart", value)

proc setOnmousedown*(element: var HtmlElement, value: string = "") =
    ## Sets the `onmousedown` attribute for all visible elements
    element.addattr("onmousedown", value)
proc setOnmousedown*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onmousedown` attribute for all visible elements
    result = element.addattr("onmousedown", value)

proc setOnmousemove*(element: var HtmlElement, value: string = "") =
    ## Sets the `onmousemove` attribute for all visible elements
    element.addattr("onmousemove", value)
proc setOnmousemove*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onmousemove` attribute for all visible elements
    result = element.addattr("onmousemove", value)

proc setOnmouseout*(element: var HtmlElement, value: string = "") =
    ## Sets the `onmouseout` attribute for all visible elements
    element.addattr("onmouseout", value)
proc setOnmouseout*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onmouseout` attribute for all visible elements
    result = element.addattr("onmouseout", value)

proc setOnmouseover*(element: var HtmlElement, value: string = "") =
    ## Sets the `onmouseover` attribute for all visible elements
    element.addattr("onmouseover", value)
proc setOnmouseover*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onmouseover` attribute for all visible elements
    result = element.addattr("onmouseover", value)

proc setOnmouseup*(element: var HtmlElement, value: string = "") =
    ## Sets the `onmouseup` attribute for all visible elements
    element.addattr("onmouseup", value)
proc setOnmouseup*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onmouseup` attribute for all visible elements
    result = element.addattr("onmouseup", value)

proc setOnmousewheel*(element: var HtmlElement, value: string = "") =
    ## Sets the `onmousewheel` attribute for all visible elements
    element.addattr("onmousewheel", value)
proc setOnmousewheel*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onmousewheel` attribute for all visible elements
    result = element.addattr("onmousewheel", value)

proc setOnoffline*(element: var HtmlElement, value: string = "") =
    ## Sets the `onoffline` attribute for `<body>` elements
    element.addattr("onoffline", value)
proc setOnoffline*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onoffline` attribute for `<body>` elements
    result = element.addattr("onoffline", value)

proc setOnonline*(element: var HtmlElement, value: string = "") =
    ## Sets the `ononline` attribute for `<body>` elements
    element.addattr("ononline", value)
proc setOnonline*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ononline` attribute for `<body>` elements
    result = element.addattr("ononline", value)

proc setOnpagehide*(element: var HtmlElement, value: string = "") =
    ## Sets the `onpagehide` attribute for `<body>` elements
    element.addattr("onpagehide", value)
proc setOnpagehide*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onpagehide` attribute for `<body>` elements
    result = element.addattr("onpagehide", value)

proc setOnpageshow*(element: var HtmlElement, value: string = "") =
    ## Sets the `onpageshow` attribute for `<body>` elements
    element.addattr("onpageshow", value)
proc setOnpageshow*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onpageshow` attribute for `<body>` elements
    result = element.addattr("onpageshow", value)

proc setOnpaste*(element: var HtmlElement, value: string = "") =
    ## Sets the `onpaste` attribute for all visible elements
    element.addattr("onpaste", value)
proc setOnpaste*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onpaste` attribute for all visible elements
    result = element.addattr("onpaste", value)

proc setOnpause*(element: var HtmlElement, value: string = "") =
    ## Sets the `onpause` attribute for `<audio>, <video>` elements
    element.addattr("onpause", value)
proc setOnpause*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onpause` attribute for `<audio>, <video>` elements
    result = element.addattr("onpause", value)

proc setOnplay*(element: var HtmlElement, value: string = "") =
    ## Sets the `onplay` attribute for `<audio>, <video>` elements
    element.addattr("onplay", value)
proc setOnplay*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onplay` attribute for `<audio>, <video>` elements
    result = element.addattr("onplay", value)

proc setOnplaying*(element: var HtmlElement, value: string = "") =
    ## Sets the `onplaying` attribute for `<audio>, <video>` elements
    element.addattr("onplaying", value)
proc setOnplaying*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onplaying` attribute for `<audio>, <video>` elements
    result = element.addattr("onplaying", value)

proc setOnpopstate*(element: var HtmlElement, value: string = "") =
    ## Sets the `onpopstate` attribute for `<body>` elements
    element.addattr("onpopstate", value)
proc setOnpopstate*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onpopstate` attribute for `<body>` elements
    result = element.addattr("onpopstate", value)

proc setOnprogress*(element: var HtmlElement, value: string = "") =
    ## Sets the `onprogress` attribute for `<audio>, <video>` elements
    element.addattr("onprogress", value)
proc setOnprogress*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onprogress` attribute for `<audio>, <video>` elements
    result = element.addattr("onprogress", value)

proc setOnratechange*(element: var HtmlElement, value: string = "") =
    ## Sets the `onratechange` attribute for `<audio>, <video>` elements
    element.addattr("onratechange", value)
proc setOnratechange*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onratechange` attribute for `<audio>, <video>` elements
    result = element.addattr("onratechange", value)

proc setOnreset*(element: var HtmlElement, value: string = "") =
    ## Sets the `onreset` attribute for `<form>` elements
    element.addattr("onreset", value)
proc setOnreset*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onreset` attribute for `<form>` elements
    result = element.addattr("onreset", value)

proc setOnresize*(element: var HtmlElement, value: string = "") =
    ## Sets the `onresize` attribute for `<body>` elements
    element.addattr("onresize", value)
proc setOnresize*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onresize` attribute for `<body>` elements
    result = element.addattr("onresize", value)

proc setOnscroll*(element: var HtmlElement, value: string = "") =
    ## Sets the `onscroll` attribute for all visible elements
    element.addattr("onscroll", value)
proc setOnscroll*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onscroll` attribute for all visible elements
    result = element.addattr("onscroll", value)

proc setOnsearch*(element: var HtmlElement, value: string = "") =
    ## Sets the `onsearch` attribute for `<input>` elements
    element.addattr("onsearch", value)
proc setOnsearch*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onsearch` attribute for `<input>` elements
    result = element.addattr("onsearch", value)

proc setOnseeked*(element: var HtmlElement, value: string = "") =
    ## Sets the `onseeked` attribute for `<audio>, <video>` elements
    element.addattr("onseeked", value)
proc setOnseeked*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onseeked` attribute for `<audio>, <video>` elements
    result = element.addattr("onseeked", value)

proc setOnseeking*(element: var HtmlElement, value: string = "") =
    ## Sets the `onseeking` attribute for `<audio>, <video>` elements
    element.addattr("onseeking", value)
proc setOnseeking*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onseeking` attribute for `<audio>, <video>` elements
    result = element.addattr("onseeking", value)

proc setOnselect*(element: var HtmlElement, value: string = "") =
    ## Sets the `onselect` attribute for all visible elements
    element.addattr("onselect", value)
proc setOnselect*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onselect` attribute for all visible elements
    result = element.addattr("onselect", value)

proc setOnstalled*(element: var HtmlElement, value: string = "") =
    ## Sets the `onstalled` attribute for `<audio>, <video>` elements
    element.addattr("onstalled", value)
proc setOnstalled*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onstalled` attribute for `<audio>, <video>` elements
    result = element.addattr("onstalled", value)

proc setOnstorage*(element: var HtmlElement, value: string = "") =
    ## Sets the `onstorage` attribute for `<body>` elements
    element.addattr("onstorage", value)
proc setOnstorage*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onstorage` attribute for `<body>` elements
    result = element.addattr("onstorage", value)

proc setOnsubmit*(element: var HtmlElement, value: string = "") =
    ## Sets the `onsubmit` attribute for `<form>` elements
    element.addattr("onsubmit", value)
proc setOnsubmit*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onsubmit` attribute for `<form>` elements
    result = element.addattr("onsubmit", value)

proc setOnsuspend*(element: var HtmlElement, value: string = "") =
    ## Sets the `onsuspend` attribute for `<audio>, <video>` elements
    element.addattr("onsuspend", value)
proc setOnsuspend*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onsuspend` attribute for `<audio>, <video>` elements
    result = element.addattr("onsuspend", value)

proc setOntimeupdate*(element: var HtmlElement, value: string = "") =
    ## Sets the `ontimeupdate` attribute for `<audio>, <video>` elements
    element.addattr("ontimeupdate", value)
proc setOntimeupdate*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ontimeupdate` attribute for `<audio>, <video>` elements
    result = element.addattr("ontimeupdate", value)

proc setOntoggle*(element: var HtmlElement, value: string = "") =
    ## Sets the `ontoggle` attribute for `<details>` elements
    element.addattr("ontoggle", value)
proc setOntoggle*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `ontoggle` attribute for `<details>` elements
    result = element.addattr("ontoggle", value)

proc setOnunload*(element: var HtmlElement, value: string = "") =
    ## Sets the `onunload` attribute for `<body>` elements
    element.addattr("onunload", value)
proc setOnunload*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onunload` attribute for `<body>` elements
    result = element.addattr("onunload", value)

proc setOnvolumechange*(element: var HtmlElement, value: string = "") =
    ## Sets the `onvolumechange` attribute for `<audio>, <video>` elements
    element.addattr("onvolumechange", value)
proc setOnvolumechange*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onvolumechange` attribute for `<audio>, <video>` elements
    result = element.addattr("onvolumechange", value)

proc setOnwaiting*(element: var HtmlElement, value: string = "") =
    ## Sets the `onwaiting` attribute for `<audio>, <video>` elements
    element.addattr("onwaiting", value)
proc setOnwaiting*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onwaiting` attribute for `<audio>, <video>` elements
    result = element.addattr("onwaiting", value)

proc setOnwheel*(element: var HtmlElement, value: string = "") =
    ## Sets the `onwheel` attribute for all visible elements
    element.addattr("onwheel", value)
proc setOnwheel*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `onwheel` attribute for all visible elements
    result = element.addattr("onwheel", value)

proc setOpen*(element: var HtmlElement, value: string = "") =
    ## Sets the `open` attribute for `<details>` elements
    element.addattr("open", value)
proc setOpen*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `open` attribute for `<details>` elements
    result = element.addattr("open", value)

proc setOptimum*(element: var HtmlElement, value: string = "") =
    ## Sets the `optimum` attribute for `<meter>` elements
    element.addattr("optimum", value)
proc setOptimum*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `optimum` attribute for `<meter>` elements
    result = element.addattr("optimum", value)

proc setPattern*(element: var HtmlElement, value: string = "") =
    ## Sets the `pattern` attribute for `<input>` elements
    element.addattr("pattern", value)
proc setPattern*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `pattern` attribute for `<input>` elements
    result = element.addattr("pattern", value)

proc setPlaceholder*(element: var HtmlElement, value: string = "") =
    ## Sets the `placeholder` attribute for `<input>, <textarea>` elements
    element.addattr("placeholder", value)
proc setPlaceholder*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `placeholder` attribute for `<input>, <textarea>` elements
    result = element.addattr("placeholder", value)

proc setPopover*(element: var HtmlElement, value: string = "") =
    ## Sets the `popover` attribute for all elements
    element.addattr("popover", value)
proc setPopover*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `popover` attribute for all elements
    result = element.addattr("popover", value)

proc setPopovertarget*(element: var HtmlElement, value: string = "") =
    ## Sets the `popovertarget` attribute for `<button>, <input>` elements
    element.addattr("popovertarget", value)
proc setPopovertarget*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `popovertarget` attribute for `<button>, <input>` elements
    result = element.addattr("popovertarget", value)

proc setPopovertargetaction*(element: var HtmlElement, value: string = "") =
    ## Sets the `popovertargetaction` attribute for `<button>, <input>` elements
    element.addattr("popovertargetaction", value)
proc setPopovertargetaction*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `popovertargetaction` attribute for `<button>, <input>` elements
    result = element.addattr("popovertargetaction", value)

proc setPoster*(element: var HtmlElement, value: string = "") =
    ## Sets the `poster` attribute for `<video>` elements
    element.addattr("poster", value)
proc setPoster*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `poster` attribute for `<video>` elements
    result = element.addattr("poster", value)

proc setPreload*(element: var HtmlElement, value: string = "") =
    ## Sets the `preload` attribute for `<audio>, <video>` elements
    element.addattr("preload", value)
proc setPreload*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `preload` attribute for `<audio>, <video>` elements
    result = element.addattr("preload", value)

proc setReadonly*(element: var HtmlElement, value: string = "") =
    ## Sets the `readonly` attribute for `<input>, <textarea>` elements
    element.addattr("readonly", value)
proc setReadonly*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `readonly` attribute for `<input>, <textarea>` elements
    result = element.addattr("readonly", value)

proc setRel*(element: var HtmlElement, value: string = "") =
    ## Sets the `rel` attribute for `<a>, <area>, <form>, <link>` elements
    element.addattr("rel", value)
proc setRel*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `rel` attribute for `<a>, <area>, <form>, <link>` elements
    result = element.addattr("rel", value)

proc setRequired*(element: var HtmlElement, value: string = "") =
    ## Sets the `required` attribute for `<input>, <select>, <textarea>` elements
    element.addattr("required", value)
proc setRequired*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `required` attribute for `<input>, <select>, <textarea>` elements
    result = element.addattr("required", value)

proc setReversed*(element: var HtmlElement, value: string = "") =
    ## Sets the `reversed` attribute for `<ol>` elements
    element.addattr("reversed", value)
proc setReversed*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `reversed` attribute for `<ol>` elements
    result = element.addattr("reversed", value)

proc setRows*(element: var HtmlElement, value: string = "") =
    ## Sets the `rows` attribute for `<textarea>` elements
    element.addattr("rows", value)
proc setRows*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `rows` attribute for `<textarea>` elements
    result = element.addattr("rows", value)

proc setRowspan*(element: var HtmlElement, value: string = "") =
    ## Sets the `rowspan` attribute for `<td>, <th>` elements
    element.addattr("rowspan", value)
proc setRowspan*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `rowspan` attribute for `<td>, <th>` elements
    result = element.addattr("rowspan", value)

proc setSandbox*(element: var HtmlElement, value: string = "") =
    ## Sets the `sandbox` attribute for `<iframe>` elements
    element.addattr("sandbox", value)
proc setSandbox*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `sandbox` attribute for `<iframe>` elements
    result = element.addattr("sandbox", value)

proc setScope*(element: var HtmlElement, value: string = "") =
    ## Sets the `scope` attribute for `<th>` elements
    element.addattr("scope", value)
proc setScope*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `scope` attribute for `<th>` elements
    result = element.addattr("scope", value)

proc setSelected*(element: var HtmlElement, value: string = "") =
    ## Sets the `selected` attribute for `<option>` elements
    element.addattr("selected", value)
proc setSelected*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `selected` attribute for `<option>` elements
    result = element.addattr("selected", value)

proc setShape*(element: var HtmlElement, value: string = "") =
    ## Sets the `shape` attribute for `<area>` elements
    element.addattr("shape", value)
proc setShape*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `shape` attribute for `<area>` elements
    result = element.addattr("shape", value)

proc setSize*(element: var HtmlElement, value: string = "") =
    ## Sets the `size` attribute for `<input>, <select>` elements
    element.addattr("size", value)
proc setSize*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `size` attribute for `<input>, <select>` elements
    result = element.addattr("size", value)

proc setSizes*(element: var HtmlElement, value: string = "") =
    ## Sets the `sizes` attribute for `<img>, <link>, <source>` elements
    element.addattr("sizes", value)
proc setSizes*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `sizes` attribute for `<img>, <link>, <source>` elements
    result = element.addattr("sizes", value)

proc setSpan*(element: var HtmlElement, value: string = "") =
    ## Sets the `span` attribute for `<col>, <colgroup>` elements
    element.addattr("span", value)
proc setSpan*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `span` attribute for `<col>, <colgroup>` elements
    result = element.addattr("span", value)

proc setSpellcheck*(element: var HtmlElement, value: string = "") =
    ## Sets the `spellcheck` attribute for all elements
    element.addattr("spellcheck", value)
proc setSpellcheck*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `spellcheck` attribute for all elements
    result = element.addattr("spellcheck", value)

proc setSrc*(element: var HtmlElement, value: string = "") =
    ## Sets the `src` attribute for `<audio>, <embed>, <iframe>, <img>, <input>, <script>, <source>, <track>, <video>` elements
    element.addattr("src", value)
proc setSrc*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `src` attribute for `<audio>, <embed>, <iframe>, <img>, <input>, <script>, <source>, <track>, <video>` elements
    result = element.addattr("src", value)

proc setSrcdoc*(element: var HtmlElement, value: string = "") =
    ## Sets the `srcdoc` attribute for `<iframe>` elements
    element.addattr("srcdoc", value)
proc setSrcdoc*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `srcdoc` attribute for `<iframe>` elements
    result = element.addattr("srcdoc", value)

proc setSrclang*(element: var HtmlElement, value: string = "") =
    ## Sets the `srclang` attribute for `<track>` elements
    element.addattr("srclang", value)
proc setSrclang*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `srclang` attribute for `<track>` elements
    result = element.addattr("srclang", value)

proc setSrcset*(element: var HtmlElement, value: string = "") =
    ## Sets the `srcset` attribute for `<img>, <source>` elements
    element.addattr("srcset", value)
proc setSrcset*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `srcset` attribute for `<img>, <source>` elements
    result = element.addattr("srcset", value)

proc setStart*(element: var HtmlElement, value: string = "") =
    ## Sets the `start` attribute for `<ol>` elements
    element.addattr("start", value)
proc setStart*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `start` attribute for `<ol>` elements
    result = element.addattr("start", value)

proc setStep*(element: var HtmlElement, value: string = "") =
    ## Sets the `step` attribute for `<input>` elements
    element.addattr("step", value)
proc setStep*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `step` attribute for `<input>` elements
    result = element.addattr("step", value)

proc setStyle*(element: var HtmlElement, value: string = "") {.deprecated: "use `addStyle` instead".}=
    ## Sets the `style` attribute for all elements
    element.addattr("style", value)
proc setStyle*(element: HtmlElement, value: string = ""): HtmlElement {.deprecated: "use `addStyle` instead".}=
    ## Sets the `style` attribute for all elements
    result = element.addattr("style", value)

proc setTabindex*(element: var HtmlElement, value: string = "") =
    ## Sets the `tabindex` attribute for all elements
    element.addattr("tabindex", value)
proc setTabindex*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `tabindex` attribute for all elements
    result = element.addattr("tabindex", value)

proc setTarget*(element: var HtmlElement, value: string = "") =
    ## Sets the `target` attribute for `<a>, <area>, <base>, <form>` elements
    element.addattr("target", value)
proc setTarget*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `target` attribute for `<a>, <area>, <base>, <form>` elements
    result = element.addattr("target", value)

proc setTitle*(element: var HtmlElement, value: string = "") =
    ## Sets the `title` attribute for all elements
    element.addattr("title", value)
proc setTitle*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `title` attribute for all elements
    result = element.addattr("title", value)

proc setTranslate*(element: var HtmlElement, value: string = "") =
    ## Sets the `translate` attribute for all elements
    element.addattr("translate", value)
proc setTranslate*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `translate` attribute for all elements
    result = element.addattr("translate", value)

proc setType*(element: var HtmlElement, value: string = "") =
    ## Sets the `type` attribute for `<a>, <button>, <embed>, <input>, <link>, <menu>, <object>, <script>, <source>, <style>` elements
    element.addattr("type", value)
proc setType*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `type` attribute for `<a>, <button>, <embed>, <input>, <link>, <menu>, <object>, <script>, <source>, <style>` elements
    result = element.addattr("type", value)

proc setUsemap*(element: var HtmlElement, value: string = "") =
    ## Sets the `usemap` attribute for `<img>, <object>` elements
    element.addattr("usemap", value)
proc setUsemap*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `usemap` attribute for `<img>, <object>` elements
    result = element.addattr("usemap", value)

proc setValue*(element: var HtmlElement, value: string = "") =
    ## Sets the `value` attribute for `<button>, <input>, <li>, <option>, <meter>, <progress>, <param>` elements
    element.addattr("value", value)
proc setValue*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `value` attribute for `<button>, <input>, <li>, <option>, <meter>, <progress>, <param>` elements
    result = element.addattr("value", value)

proc setWidth*(element: var HtmlElement, value: string = "") =
    ## Sets the `width` attribute for `<canvas>, <embed>, <iframe>, <img>, <input>, <object>, <video>` elements
    element.addattr("width", value)
proc setWidth*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `width` attribute for `<canvas>, <embed>, <iframe>, <img>, <input>, <object>, <video>` elements
    result = element.addattr("width", value)

proc setWrap*(element: var HtmlElement, value: string = "") =
    ## Sets the `wrap` attribute for `<textarea>` elements
    element.addattr("wrap", value)
proc setWrap*(element: HtmlElement, value: string = ""): HtmlElement =
    ## Sets the `wrap` attribute for `<textarea>` elements
    result = element.addattr("wrap", value)

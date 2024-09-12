import std/[]
import generators

# Reference:
# https://www.w3schools.com/tags/ref_attributes.asp

#[
# Template:

proc YYY*(element: var HtmlElement, value: string) =
    ## Sets the `YY` attribute for `` elements
    element.addattr("YY", value)
proc YYY*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `YY` attribute for `` elements
    result = element
    result.YYY(value)

]#

proc setAccept*(element: var HtmlElement, value: string) =
    ## Sets the `accept` attribute on `input` elements
    element.addattr("accept", value)
proc setAccept*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `accept` attribute on `input` elements
    result = element
    result.setAccept(value)

proc setAcceptCharset*(element: var HtmlElement, value: string) =
    ## Sets the `accept-charset` attribute on `form` elements
    element.addattr("accept-charset", value)
proc setAcceptCharset*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `accept-charset` attribute on `form` elements
    result = element
    result.setAcceptCharset(value)

proc setAccesskey*(element: var HtmlElement, value: string) =
    ## Sets the `accesskey` attribute
    element.addattr("accesskey", value)
proc setAccesskey*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `accesskey` attribute
    result = element
    result.setAccesskey(value)

proc setAction*(element: var HtmlElement, value: string) =
    ## Sets the `action` attribute on `form` elements
    element.addattr("action", value)
proc setAction*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `action` attribute on `form` elements
    result = element
    result.setAction(value)

proc setAlt*(element: var HtmlElement, value: string) =
    ## Sets the `alt` attribute on `area, `img` and `input` elements
    element.addattr("alt", value)
proc setAlt*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `alt` attribute on `area`, `img` and `input` elements
    result = element
    result.setAlt(value)

proc setAsync*(element: var HtmlElement) =
    ## Sets the `async` attribute for `script` elements
    element.addattr("async")
proc setAsync*(element: HtmlElement): HtmlElement =
    ## Sets the `async` attribute for `script` elements
    result = element
    result.setAsync()

proc setAutocomplete*(element: var HtmlElement) =
    ## Sets the `autocomplete` attribute for `form`, `input` elements
    element.addattr("autocomplete")
proc setAutocomplete*(element: HtmlElement): HtmlElement =
    ## Sets the `autocomplete` attribute for `form`, `input` elements
    result = element
    result.setAutocomplete()

proc setAutofocus*(element: var HtmlElement) =
    ## Sets the `autofocus` attribute for `button`, `input`, `select`, `textarea` elements
    element.addattr("autofocus")
proc setAutofocus*(element: HtmlElement): HtmlElement =
    ## Sets the `autofocus` attribute for `button`, `input`, `select`, `textarea` elements
    result = element
    result.setAutofocus()

proc setAutoplay*(element: var HtmlElement) =
    ## Sets the `autoplay` attribute for `audio`, `video` elements
    element.addattr("autoplay")
proc setAutoplay*(element: HtmlElement): HtmlElement =
    ## Sets the `autoplay` attribute for `audio`, `video` elements
    result = element
    result.setAutoplay()






















proc setId*(element: var HtmlElement, id: string) =
    ## Sets the `id` attribute
    element.addattr("id", id)
proc setId*(element: HtmlElement, id: string): HtmlElement =
    ## Sets the `id` attribute
    result = element
    result.setId(id)

proc setHref*(element: var HtmlElement, value: string) =
    ## Sets the `href` attribute
    element.addattr("href", value)
proc setHref*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `href` attribute
    result = element
    result.setHref(value)

proc setSrc*(element: var HtmlElement, value: string) =
    ## Sets the `src` attribute
    element.addattr("src", value)
proc setSrc*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `src` attribute
    result = element
    result.setSrc(value)

proc setWidth*(element: var HtmlElement, value: string) =
    ## Sets the `width` attribute
    element.addattr("width", value)
proc setWidth*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `width` attribute
    result = element
    result.setWidth(value)

proc setHeight*(element: var HtmlElement, value: string) =
    ## Sets the `heigth` attribute
    element.addattr("heigth", value)
proc setHeight*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `heigth` attribute
    result = element
    result.setHeight(value)


proc setLang*(element: var HtmlElement, value: string) =
    ## Sets the `lang` attribute
    element.addattr("lang", value)
proc setLang*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `lang` attribute
    result = element
    result.setLang(value)

proc setTitle*(element: var HtmlElement, value: string) =
    ## Sets the `title` attribute
    element.addattr("title", value)
proc setTitle*(element: HtmlElement, value: string): HtmlElement =
    ## Sets the `title` attribute
    result = element
    result.setTitle(value)

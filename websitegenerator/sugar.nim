import generators

proc `[]`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    newHtmlElement(tag, tagAttributes)
#[
proc `{}`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    tag[tagAttributes]
]#
proc `[]=`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    result = newHtmlElement(tag, tagAttributes)
#[
proc `{}=`*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Sugar constructor for HtmlElement
    result = newHtmlElement(tag, tagAttributes)
]#

proc `=>`*(attribute, value: string): HtmlElementAttribute =
    result = attr(attribute, value)

proc `{}`*(element: string, properties: varargs[CssAttribute]): CssElement =
    ## Sugar assignment of properties
    newCssElement(element, properties)
#[
proc `[]`*(element: string, properties: varargs[CssAttribute]): CssElement =
    ## Sugar assignment of properties
    newCssElement(element, properties)
]#

proc `:=`*(property, value: string): CssAttribute =
    ## Sugar constructor for CssAttribute
    [property, value]

proc `=>`*(element: var HtmlElement, content: string) =
    ## Sugar content assignment
    element.content = content
proc `>=<`*(element: var HtmlElement, content: string) =
    ## Sugar content assignment
    element.content = content

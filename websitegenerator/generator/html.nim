## Html Generator
## ==============
##
## This module generates `HtmlElement` objects, that are used in building up
## your html page.

import std/[sequtils, strutils, strformat, tables, algorithm]
import ./targetDirectory
import ../settings

const selfClosingTags: seq[string] = @[
    "area",
    "base",
    "br",
    "col",
    "embed",
    "hr",
    "img",
    "input",
    "link",
    "meta",
    "param",
    "source",
    "track",
    "wbr",

    # Legacy:
    "command",
    "keygen",
    "menuitem",
    "frame"
] ## Reference: http://xahlee.info/js/html5_non-closing_tag.html

type
    HtmlElementAttribute* = object
        ## Attribute for an `HtmlElement`
        name*, value*: string ## &"{name}='{value}'"

    HtmlElement* = object
        ## Object for HTML elements (Example: `<p> ... </p>`)
        tag*: string ## Html tag (example: `p`, `div`, `h1`, ...)
        content: string ## Content field, only used for `rawText` internally
        children*: seq[HtmlElement] ## Children `HtmlElement`s
        tagAttributes*: seq[HtmlElementAttribute] = @[] ## Html attributes like `defer`, `src`, `alt`, ...

    HtmlDocument* = object
        ## HTML document object
        file*: string ## File name/path
        doctypeAttributes*, htmlAttributes*, bodyAttributes*: seq[HtmlElementAttribute] ## Attributes for the head and body of the document
        head*, body*, bodyEnd*: seq[HtmlElement]

    AnyToHtml* = string|char|bool|SomeNumber


proc isRawText(element: HtmlElement): bool = element.tag == wgsInternalRawTextHtmlTag or element.tag.strip() == ""
proc rawText*(text: string): HtmlElement = HtmlElement(
    tag: wgsInternalRawTextHtmlTag,
    content: text
) ## Raw text inside HTML

proc sortAlphabetically(x, y: HtmlElementAttribute): int =
    cmp(x.name, y.name)
proc sortAlphabetically(x, y: string): int =
    cmp(x, y)

#[
proc newHtmlElement*(tag: string, child: HtmlElement): HtmlElement = HtmlElement(tag: tag, children: @[child])
proc newHtmlElement*(tag: string, children: seq[HtmlElement]): HtmlElement = HtmlElement(tag: tag, children: children)
proc newHtmlElement*(tag: string, child: HtmlElement, children: varargs[HtmlElement]): HtmlElement = newHtmlElement(tag, @[child] & toSeq(children)) # painful

proc newHtmlElement*(tag: string, attributes: seq[HtmlElementAttribute]): HtmlElement = HtmlElement(tag: tag, tagAttributes: attributes)
proc newHtmlElement*(tag: string, attributes: seq[HtmlElementAttribute], child: HtmlElement): HtmlElement = HtmlElement(tag: tag, tagAttributes: attributes, children: @[child])
proc newHtmlElement*(tag: string, attributes: seq[HtmlElementAttribute], children: seq[HtmlElement]): HtmlElement = HtmlElement(tag: tag, tagAttributes: attributes, children: children)
proc newHtmlElement*(tag: string, attributes: seq[HtmlElementAttribute], child: HtmlElement, children: varargs[HtmlElement]): HtmlElement = HtmlElement(tag: tag, tagAttributes: attributes, children: toSeq(children))
]#
proc newHtmlElement*(tag: string): HtmlElement = HtmlElement(tag: tag)
proc newHtmlElement*(tag: string, attributes: seq[HtmlElementAttribute]): HtmlElement = HtmlElement(tag: tag, tagAttributes: attributes)

proc `<$>`*(element: HtmlElement): HtmlElement = element ## Converts to `HtmlElement`
proc `<$>`*(element: AnyToHtml): HtmlElement = rawText($element) ## Converts to `HtmlElement`
proc `<$>`*(elements: seq[HtmlElement]): seq[HtmlElement] = elements ## Converts to `HtmlElement`
proc `<$>`*(elements: seq[AnyToHtml]): seq[HtmlElement] = ## Converts to `HtmlElement`
    var stringified: seq[string]
    for element in elements: stringified.add $element
    if wgsRawTextSeparator == "": return <$>stringified
    let sep: HtmlElement = HtmlElement(tag: "br") # this will automatically use trailing slash setting
    for i, element in stringified:
        result.add <$>element
        if i == stringified.len() - 1: continue
        result.add sep

# i am so sorry you have to look upon the following template...
template newElementGenerator*(NAME: untyped, RETURN_TYPE, ARGS_TYPE: type): untyped =
    proc NAME*(tag: string, child: ARGS_TYPE): RETURN_TYPE = HtmlElement(tag: tag, children: @[<$>child])
    proc NAME*(tag: string, children: seq[ARGS_TYPE]): HtmlElement = RETURN_TYPE(tag: tag, children: <$>children)
    proc NAME*(tag: string, child1: ARGS_TYPE, child2: ARGS_TYPE, children: varargs[ARGS_TYPE]): RETURN_TYPE = HtmlElement(tag: tag, children: <$>(@[child1, child2] & toSeq(children)))

    proc NAME*(tag: string, attributes: seq[HtmlElementAttribute], child: ARGS_TYPE): RETURN_TYPE = HtmlElement(tag: tag, tagAttributes: attributes, children: @[<$>child])
    proc NAME*(tag: string, attributes: seq[HtmlElementAttribute], children: seq[ARGS_TYPE]): RETURN_TYPE = HtmlElement(tag: tag, tagAttributes: attributes, children: <$>children)
    proc NAME*(tag: string, attributes: seq[HtmlElementAttribute], child1: ARGS_TYPE, child2: ARGS_TYPE, children: varargs[ARGS_TYPE]): RETURN_TYPE = HtmlElement(tag: tag, tagAttributes: attributes, children: <$>(@[child1, child2] & toSeq(children)))


newElementGenerator(newHtmlElement, HtmlElement, HtmlElement)
newElementGenerator(newHtmlElement, HtmlElement, AnyToHtml)



proc add*(element: var HtmlElement, children: seq[HtmlElement]) =
    ## Appends `HtmlElement`s children to an element
    element.children &= children
proc add*(element: var HtmlElement, children: varargs[HtmlElement]) =
    ## Appends `HtmlElement`s children to an element
    element.add children.toSeq()
proc add*(element: HtmlElement, children: seq[HtmlElement]): HtmlElement =
    ## Appends `HtmlElement`s children to an element
    result = element
    result.add children
proc add*(element: HtmlElement, children: varargs[HtmlElement]): HtmlElement =
    ## Appends `HtmlElement`s children to an element
    result = element
    result.add children

proc getChildren*(element: HtmlElement): seq[HtmlElement] =
    ## Gets the children of an element
    for child in element.children:
        if child.tag == wgsInternalRawTextHtmlTag: continue
        result.add child
iterator childrenOf*(element: HtmlElement): HtmlElement =
    ## Iterates through children of an element
    let children: seq[HtmlElement] = element.getChildren()
    for child in children:
        yield child


proc newAttribute*(name, value: string): HtmlElementAttribute = HtmlElementAttribute(
    name: name,
    value: value
) ## Generic builder for tag attributes -> name="value"
proc newAttribute*(name: string): HtmlElementAttribute = HtmlElementAttribute(
    name: name
) ## Generic builder for tag attributes -> booleans

proc attr*(name, value: string): HtmlElementAttribute = newAttribute(name, value) ## Shortcut for `newAttribute()`
proc attr*(name: string): HtmlElementAttribute = newAttribute(name) ## Shortcut for `newAttribute()`

proc add*(element: var HtmlElement, attributes: varargs[HtmlElementAttribute]) =
    ## Adds attribute(s) to an element
    for attribute in attributes:
        element.tagAttributes.add(attribute)
proc add*(element: HtmlElement, attributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Adds attribute(s) to an element
    result = element
    result.add attributes

proc addattr*(element: var HtmlElement, property: string) =
    ## Adds an attribute to an element
    element.add(attr(property))
proc addattr*(element: var HtmlElement, property, value: string) =
    ## Adds an attribute to an element
    element.add(attr(property, value))
proc addattr*(element: HtmlElement, property: string): HtmlElement =
    ## Adds an attribute to an element
    result = element
    result.add(attr(property))
proc addattr*(element: HtmlElement, property, value: string): HtmlElement =
    ## Adds an attribute to an element
    result = element
    result.add(attr(property, value))

proc getSortedAttributes*(element: HtmlElement): seq[HtmlElementAttribute] =
    var formattedAttributes: Table[string, seq[string]]
    for attr in element.tagAttributes.deduplicate():
        if not formattedAttributes.hasKey(attr.name): formattedAttributes[attr.name] = @[attr.value] ## Assign new attribute
        else: formattedAttributes[attr.name].add attr.value ## Add to attribute value

    for name, values in formattedAttributes:
        var sortedValues: seq[string] = values
        if wgsSortHtmlAttributes: sortedValues.sort(sortAlphabetically)
        result.add newAttribute(name, sortedValues.join(" ").replace("\"", "&quot;").replace("'", "&#39;")) # Replace quotes with HTML encoding
    result.sort(sortAlphabetically)

proc clearAllAttributes*(element: var HtmlElement) =
    ## Clears all attributes for an element
    element.tagAttributes = @[]
proc clearAllAttributes*(element: HtmlElement): HtmlElement =
    ## Clears all attributes for an element
    result = element
    result.clearAllAttributes()

proc clearMatchingAttribute*(element: var HtmlElement, name: string) =
    ## Clears specified attributes for an element
    var attributes: seq[HtmlElementAttribute]
    for attribute in element.tagAttributes:
        if attribute.name == name: continue
        attributes.add attribute
    element.tagAttributes = attributes
proc clearMatchingAttribute*(element: HtmlElement, name: string): HtmlElement =
    ## Clears specified attributes for an element
    result = element
    result.clearMatchingAttribute(name)

proc clearMatchingAttributes*(element: var HtmlElement, names: seq[string]) =
    ## Clears specified attributes for an element
    for name in names:
        element.clearMatchingAttribute(name)
proc clearMatchingAttributes*(element: HtmlElement, names: seq[string]): HtmlElement =
    ## Clears specified attributes for an element
    result = element
    result.clearMatchingAttributes(names)


proc newHtmlDocument*(fileName: string): HtmlDocument = HtmlDocument(
    file: fileName
) ## New html document with a filename (used in `writeFile()` proc to write to disk)

proc addToBody*(document: var HtmlDocument, element: HtmlElement) =
    ## Adds a single html element to the body of the document.
    document.body.add(element)
proc addToBody*(document: var HtmlDocument, elements: seq[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the body of the document.
    for element in elements:
        document.addToBody(element)
proc addToBody*(document: var HtmlDocument, elements: varargs[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the body of the document.
    for element in elements:
        document.addToBody(element)

proc add*(document: var HtmlDocument, element: HtmlElement) = document.addToBody(element) ## Shortcut for `addToBody()` proc
proc add*(document: var HtmlDocument, elements: seq[HtmlElement]) = document.addToBody(elements) ## Shortcut for `addToBody()` proc
proc add*(document: var HtmlDocument, elements: varargs[HtmlElement]) = document.addToBody(elements) ## Shortcut for `addToBody()` proc


proc addToBodyEnd*(document: var HtmlDocument, element: HtmlElement) =
    ## Adds a single `HtmlElement` to the end of the body of the document.
    document.bodyEnd.add(element)
proc addToBodyEnd*(document: var HtmlDocument, elements: seq[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the end of the body of the document.
    for element in elements:
        document.addToBodyEnd(element)
proc addToBodyEnd*(document: var HtmlDocument, elements: varargs[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the end of the body of the document.
    document.addToBodyEnd(elements.toSeq())


proc addToHead*(document: var HtmlDocument, element: HtmlElement) =
    ## Adds a single `HtmlElement` to the head of the document.
    document.head.add(element)
proc addToHead*(document: var HtmlDocument, elements: seq[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the head of the document.
    for element in elements:
        document.addToHead(element)
proc addToHead*(document: var HtmlDocument, elements: varargs[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the head of the document.
    document.addToHead(elements.toSeq())


proc addAttributeToBody*(document: var HtmlDocument, attribute: HtmlElementAttribute) =
    ## Adds an attribute to the document `<body ... >` tag
    document.bodyAttributes &= attribute
proc addAttributeToBody*(document: var HtmlDocument, name: string) =
    ## Adds an attribute to the document `<body ... >` tag
    document.addAttributeToBody(attr(name))
proc addAttributeToBody*(document: var HtmlDocument, name, value: string) =
    ## Adds an attribute to the document `<body ... >` tag
    document.addAttributeToBody(attr(name, value))

proc addAttributesToBody*(document: var HtmlDocument, attributes: seq[HtmlElementAttribute]) =
    ## Adds attributes to the document `<body ... >` tag
    for attribute in attributes:
        document.addAttributeToBody(attribute)
proc addAttributesToBody*(document: var HtmlDocument, attributes: varargs[HtmlElementAttribute]) =
    ## Adds attributes to the document `<body ... >` tag
    document.addAttributesToBody(attributes.toSeq())


proc addAttributeToHtml*(document: var HtmlDocument, attribute: HtmlElementAttribute) =
    ## Adds an attribute to the document `<html ... >` tag
    document.htmlAttributes &= attribute
proc addAttributeToHtml*(document: var HtmlDocument, name: string) =
    ## Adds an attribute to the document `<html ... >` tag
    document.addAttributeToHtml(attr(name))
proc addAttributeToHtml*(document: var HtmlDocument, name, value: string) =
    ## Adds an attribute to the document `<html ... >` tag
    document.addAttributeToHtml(attr(name, value))

proc addAttributesToHtml*(document: var HtmlDocument, attributes: seq[HtmlElementAttribute]) =
    ## Adds attributes to the document `<html ... >` tag
    for attribute in attributes:
        document.addAttributeToHtml(attribute)
proc addAttributesToHtml*(document: var HtmlDocument, attributes: varargs[HtmlElementAttribute]) =
    ## Adds attributes to the document `<html ... >` tag
    document.addAttributesToHtml(attributes.toSeq())


proc addAttributeToDoctype*(document: var HtmlDocument, attribute: HtmlElementAttribute) =
    ## Adds an attribute to the document `<!DOCTYPE html ... >` tag
    document.doctypeAttributes &= attribute
proc addAttributeToDoctype*(document: var HtmlDocument, name: string) =
    ## Adds an attribute to the document `<!DOCTYPE html ... >` tag
    document.addAttributeToDoctype(attr(name))
proc addAttributeToDoctype*(document: var HtmlDocument, name, value: string) =
    ## Adds an attribute to the document `<!DOCTYPE html ... >` tag
    document.addAttributeToDoctype(attr(name, value))

proc addAttributesToDoctype*(document: var HtmlDocument, attributes: seq[HtmlElementAttribute]) =
    ## Adds attributes to the document `<!DOCTYPE html ... >` tag
    for attribute in attributes:
        document.addAttributeToDoctype(attribute)
proc addAttributesToDoctype*(document: var HtmlDocument, attributes: varargs[HtmlElementAttribute]) =
    ## Adds attributes to the document `<!DOCTYPE html ... >` tag
    document.addAttributesToDoctype(attributes.toSeq())


proc forceClosingTag*(element: var HtmlElement) {.deprecated: "default behaviour, now handled automatically".} =
    ## Forces to generate a closing tag
    discard
proc forceClosingTag*(element: HtmlElement): HtmlElement {.deprecated: "default behaviour, now handled automatically".} =
    ## Forces to generate a closing tag
    discard

proc `$`*(attribute: HtmlElementAttribute): string =
    ## Converts HtmlElementAttribute to raw html string
    if attribute.value != "":
        # result = " " & attribute.name & "=\"" & attribute.value & "\""
        result = &""" {attribute.name}='{attribute.value}'"""
    else:
        result = &""" {attribute.name}"""
proc `$`*(attributes: seq[HtmlElementAttribute]): string =
    ## Converts a sequence of HtmlElementAttribute to raw html string
    for attribute in attributes.deduplicate():
        result &= $attribute

proc `$`*(element: HtmlElement): string =
    # Raw text just returns content:
    if element.isRawText(): return element.content

    # Content:
    var content: string = element.content
    for child in element.children:
        content &= $child

    # Attributes:
    var attributes: seq[HtmlElementAttribute] = element.getSortedAttributes().deduplicate()

    # Construct string:
    if element.tag in selfClosingTags:
        result = &"<{element.tag}{attributes}" & (
            if wgsSelfClosingTagsTrailingSlash: " /"
            else: ""
        ) & ">"
    else:
        result = &"<{element.tag}{attributes}>{content}</{element.tag}>"
proc `$`*(elements: seq[HtmlElement]): string =
    ## Converts a sequence of HtmlElement to raw html string
    var lines: seq[string]
    for element in elements:
        lines.add($element)
    result = lines.join("\n")
proc `$`*(elements: varargs[HtmlElement]): string =
    ## Converts a sequence of HtmlElement to raw html string
    result = $toSeq(elements)

proc `$`*(document: HtmlDocument): string =
    ## Converts an entire html document to raw html string
    const indentation: int = 4
    var lines: seq[string]

    # Doctype:
    if not wgsOmitDocumentDoctype:
        if document.doctypeAttributes.len() == 0:
            lines.add("<!DOCTYPE html>")
        else:
            var attributes = document.doctypeAttributes
            if wgsSortHtmlAttributes: attributes.sort(sortAlphabetically)
            lines.add("<!DOCTYPE html" & $attributes & ">")

    # Opening html tag (with optional attributes):
    if not wgsOmitDocumentHtmlTags:
        if document.htmlAttributes.len() == 0:
            lines.add("<html>")
        else:
            var attributes = document.htmlAttributes
            if wgsSortHtmlAttributes: attributes.sort(sortAlphabetically)
            lines.add("<html" & $attributes & ">")

    if likely document.head.len() != 0:
        lines.add("<head>")
        lines.add(indent($document.head, indentation))
        lines.add("</head>")

    if likely document.body.len() + document.bodyEnd.len() != 0:
        # Body tag:
        if document.bodyAttributes.len() == 0:
            lines.add("<body>")
        else:
            var attributes = document.bodyAttributes
            if wgsSortHtmlAttributes: attributes.sort(sortAlphabetically)
            lines.add("<body" & $attributes & ">")

        if document.body.len() != 0:
            lines.add(indent($document.body, indentation))
        if document.bodyEnd.len() != 0:
            lines.add(indent($document.bodyEnd, indentation))
        lines.add("</body>")

    # Closing html tag:
    if not wgsOmitDocumentHtmlTags:
        lines.add("</html>")

    result = lines.join("\n")


proc writeFile*(document: HtmlDocument) {.raises: [IOError, ValueError].} =
    ## Writes the html document to disk. Operation fails with `IOError`, if `document.file == ""`.
    if unlikely document.file.strip() == "":
        raise ValueError.newException("Document file name is unspecified, cannot write to filesystem.")
    document.file.toTargetDirectory().writeFile($document)

proc writeFile*(document: HtmlDocument, fileName: string) {.raises: [IOError, KeyError].} =
    ## Writes the html document to disk with custom file name/path.
    filename.toTargetDirectory().writeFile($document)


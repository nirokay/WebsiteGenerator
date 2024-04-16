## Html Generator
## ==============
##
## This module generates `HtmlElement` objects, that are used in building up
## your html page.

import std/[strutils, strformat, sequtils]

type
    HtmlElementAttribute* = object
        ## Attribute for an `HtmlElement`
        name*, value*: string

    HtmlElement* = object
        ## Object for HTML elements (Example: `<p> ... </p>`)
        tag*, class*, content*: string
        tagAttributes*: seq[HtmlElementAttribute] = @[]
        forceTwoTags*: bool ## Forces to generate an opening and closing tag (does not generate normally, when content is empty)

    HtmlDocument* = object
        ## HTML document object
        file*: string
        head*, body*, bodyEnd*: seq[HtmlElement]


proc newHtmlElement*(tag, content: string): HtmlElement = HtmlElement(
    tag: tag,
    content: content,
) ## Generic builder for html elements without tag attributes
proc newHtmlElement*(tag: string, tagAttributes: seq[HtmlElementAttribute], content: string = ""): HtmlElement = HtmlElement(
    tag: tag,
    content: content,
    tagAttributes: tagAttributes
) ## Generic builder for html elements with tag attributes and maybe content
proc newHtmlElement*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Generic builder for html elements with no content and multiple tag attributes
    var attributes: seq[HtmlElementAttribute]
    for attribute in tagAttributes:
        attributes.add(attribute)
    result = newHtmlElement(tag, attributes)

proc newElement*(tag, content: string): HtmlElement {.deprecated: "Use newHtmlElement() instead".} =
    ## Generic builder for html elements without tag attributes
    newHtmlElement(tag, content)
proc newElement*(tag: string, tagAttributes: seq[HtmlElementAttribute], content: string = ""): HtmlElement {.deprecated: "Use newHtmlElement() instead".} =
    ## Generic builder for html elements with tag attributes and maybe content
    newHtmlElement(tag, tagAttributes, content)
proc newElement*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement {.deprecated: "Use newHtmlElement() instead".} =
    ## Generic builder for html elements with no content and multiple tag attributes
    newHtmlElement(tag, tagAttributes)

proc newAttribute*(name, value: string): HtmlElementAttribute = HtmlElementAttribute(
    name: name,
    value: value
) ## Generic builder for tag attributes -> name="value"
proc newAttribute*(name: string): HtmlElementAttribute = HtmlElementAttribute(
    name: name
) ## Generic builder for tag attributes -> booleans

proc attr*(name, value: string): HtmlElementAttribute = newAttribute(name, value) ## Shortcut for `newAttribute()`
proc attr*(name: string): HtmlElementAttribute = newAttribute(name) ## Shortcut for `newAttribute()`

proc add*(element: HtmlElement, attribute: varargs[HtmlElementAttribute]): HtmlElement =
    ## Adds attribute(s) to an element
    result = element
    for i in attribute:
        result.tagAttributes.add(attribute)
proc add*(element: var HtmlElement, attribute: varargs[HtmlElementAttribute]) =
    ## Adds attribute(s) to an element
    for i in attribute:
        element.tagAttributes.add(attribute)

proc addattr*(element: HtmlElement, property: string): HtmlElement =
    ## Adds an attribute to an element
    result = element.add(attr(property))
proc addattr*(element: HtmlElement, property, value: string): HtmlElement =
    ## Adds an attribute to an element
    result = element.add(attr(property, value))
proc addattr*(element: var HtmlElement, property: string) =
    ## Adds an attribute to an element
    element.add(attr(property))
proc addattr*(element: var HtmlElement, property, value: string) =
    ## Adds an attribute to an element
    element.add(attr(property, value))

proc newHtmlDocument*(fileName: string): HtmlDocument = HtmlDocument(
    file: fileName
) ## New html document with a filename (used in `writeFile()` proc to write to disk)
proc newDocument*(fileName: string): HtmlDocument {.deprecated: "use newHtmlDocument() instead".} =
    ## New html document with a filename (used in `writeFile()` proc to write to disk)
    newHtmlDocument(fileName)

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
    for element in elements:
        document.addToBodyEnd(element)


proc addToHead*(document: var HtmlDocument, element: HtmlElement) =
    ## Adds a single `HtmlElement` to the head of the document.
    document.head.add(element)
proc addToHead*(document: var HtmlDocument, elements: seq[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the head of the document.
    for element in elements:
        document.addToHead(element)
proc addToHead*(document: var HtmlDocument, elements: varargs[HtmlElement]) =
    ## Adds multiple `HtmlElement`s to the head of the document.
    for element in elements:
        document.addToHead(element)

proc forceClosingTag*(element: var HtmlElement) =
    ## Forces to generate a closing tag
    element.forceTwoTags = true
proc forceClosingTag*(element: HtmlElement): HtmlElement =
    ## Forces to generate a closing tag
    result = element
    result.forceClosingTag()

proc `$`*(attribute: HtmlElementAttribute): string =
    ## Converts HtmlElementAttribute to raw html string
    if attribute.value != "":
        result = " " & attribute.name & "=\"" & attribute.value & "\""
    else:
        result = " " & attribute.name
proc `$`*(attributes: seq[HtmlElementAttribute]): string =
    ## Converts a sequence of HtmlElementAttribute to raw html string
    for attribute in attributes:
        result &= $attribute

proc `$`*(element: HtmlElement): string =
    ## Converts HtmlElement to raw html string
    var
        attributes: string
        rawattributes: seq[HtmlElementAttribute] = element.tagAttributes.deduplicate()
    # TODO: find an actual fix to weird doubling of attributes (instead of calling `.deduplicate()`)
    # Reproduction of the bug:
    # ========================
    # $newElement("e", "this is content").add(
    #     attr("attribute"),
    #     attr("attribute-with-stuff", "stuff")
    # ) == "<e attribute attribute-with-stuff=\"stuff\" attribute attribute-with-stuff=\"stuff\">this is content</e>"

    # Add class attribute:
    if element.class != "":
        rawattributes.add(
            newAttribute("class", element.class)
        )

    # Attributes to string:
    if rawattributes.len() != 0:
        attributes = rawattributes.join("")

    # Generate html:
    if element.tag == "":
        # Raw string to html document
        result = element.content
    elif element.content == "" and not element.forceTwoTags:
        # Only one tag, without closing one (for example <img ... >)
        result = &"<{element.tag}{$attributes} />"
    else:
        # Closing and opening tags with content:
        result = &"<{element.tag}{$attributes}>{element.content}</{element.tag}>"
proc `$`*(elements: seq[HtmlElement]): string =
    ## Converts a sequence of HtmlElement to raw html string
    var lines: seq[string]
    for element in elements:
        lines.add($element)
    result = lines.join("\n")

proc `$`*(document: HtmlDocument): string =
    ## Converts an entire html document to raw html string
    const indentation: int = 4
    var lines: seq[string]
    lines.add("<!DOCTYPE html>")
    lines.add("<html>")

    if likely document.head.len() != 0:
        lines.add("<head>")
        lines.add(indent($document.head, indentation))
        lines.add("</head>")

    if likely document.body.len() + document.bodyEnd.len() != 0:
        lines.add("<body>")
        if document.body.len() != 0:
            lines.add(indent($document.body, indentation))
        if document.bodyEnd.len() != 0:
            lines.add(indent($document.bodyEnd, indentation))
        lines.add("</body>")

    lines.add("</html>")
    result = lines.join("\n")


proc writeFile*(document: HtmlDocument) {.raises: [IOError, ValueError].} =
    ## Writes the html document to disk. Operation fails with `IOError`, if `document.file == ""`.
    if unlikely document.file.strip() == "":
        raise ValueError.newException("Document file name is unspecified, cannot write to filesystem.")
    document.file.writeFile($document)

proc writeFile*(document: HtmlDocument, fileName: string) {.raises: [IOError, ValueError].} =
    ## Writes the html document to disk with custom file name/path.
    filename.writeFile($document)


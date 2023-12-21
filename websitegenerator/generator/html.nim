## Html Generator
## ==============
##
## This module generates `HtmlElement` objects, that are used in building up
## your html page.

import std/[strutils, strformat]

type
    HtmlElementAttribute* = object
        ## Attribute for an `HtmlElement`
        name*, value*: string

    HtmlElement* = object
        ## Object for HTML elements (Example: `<p> ... </p>`)
        tag*, class*, content*: string
        tagAttributes*: seq[HtmlElementAttribute] = @[]

    HtmlDocument* = object
        ## HTML document object
        file*: string
        head*, body*: seq[HtmlElement]


proc newElement*(tag, content: string): HtmlElement = HtmlElement(
    tag: tag,
    content: content,
) ## Generic builder for html elements without tag attributes
proc newElement*(tag: string, tagAttributes: seq[HtmlElementAttribute], content: string = ""): HtmlElement = HtmlElement(
    tag: tag,
    content: content,
    tagAttributes: tagAttributes
) ## Generic builder for html elements with tag attributes and maybe content
proc newElement*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Generic builder for html elements with no content and multiple tag attributes
    var attributes: seq[HtmlElementAttribute]
    for attribute in tagAttributes:
        attributes.add(attribute)
    result = newElement(tag, attributes)

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

proc newDocument*(fileName: string): HtmlDocument = HtmlDocument(
    file: fileName
) ## New html document with a filename (used in `writeFile()` proc to write to disk)


proc addToBody*(document: var HtmlDocument, element: HtmlElement) =
    ## Adds a single html element to the body of the document.
    document.body.add(element)
proc addToBody*(document: var HtmlDocument, elements: seq[HtmlElement]) =
    ## Adds a sequence of html elements to the body of the document.
    for element in elements:
        document.addToBody(element)
proc addToBody*(document: var HtmlDocument, elements: varargs[HtmlElement]) =
    ## Adds multiple html elements to the body of the document.
    for element in elements:
        document.addToBody(element)

proc add*(document: var HtmlDocument, element: HtmlElement) = document.addToBody(element) ## Shortcut for `addToBody()` proc
proc add*(document: var HtmlDocument, elements: seq[HtmlElement]) = document.addToBody(elements) ## Shortcut for `addToBody()` proc
proc add*(document: var HtmlDocument, elements: varargs[HtmlElement]) = document.addToBody(elements) ## Shortcut for `addToBody()` proc

proc addToHead*(document: var HtmlDocument, element: HtmlElement) =
    ## Adds a single html element to the head of the document.
    document.head.add(element)
proc addToHead*(document: var HtmlDocument, elements: seq[HtmlElement]) =
    ## Adds a sequence of html elements to the head of the document.
    for element in elements:
        document.addToHead(element)
proc addToHead*(document: var HtmlDocument, elements: varargs[HtmlElement]) =
    ## Adds multiple html elements to the head of the document.
    for element in elements:
        document.addToHead(element)


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
        rawattributes: seq[HtmlElementAttribute] = element.tagAttributes

    # Add class attribute:
    if element.class != "":
        rawattributes.add(
            newAttribute("class", element.class)
        )

    # attributes to string:
    if rawattributes.len() != 0:
        attributes = rawattributes.join("")

    # Generate html:
    if element.tag == "":
        # Raw string to html document
        result = element.content
    elif element.content == "":
        # Only one tag, without closing one (for example <img ... >)
        result = &"<{element.tag}{$attributes}>"
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

    if document.head.len() != 0:
        lines.add("<head>")
        lines.add(indent($document.head, indentation))
        lines.add("</head>")

    if document.body.len() != 0:
        lines.add("<body>")
        lines.add(indent($document.body, indentation))
        lines.add("</body>")

    lines.add("</html>")
    result = lines.join("\n")


proc writeFile*(document: HtmlDocument) {.raises: [IOError, ValueError].} =
    ## Writes the html document to disk. Operation fails with `IOError`, if `document.file == ""`.
    if document.file.strip() == "":
        raise ValueError.newException("Document file name is unspecified, cannot write to filesystem.")
    document.file.writeFile($document)

proc writeFile*(document: HtmlDocument, fileName: string) {.raises: [IOError, ValueError].} =
    ## Writes the html document to disk with custom file name/path.
    filename.writeFile($document)


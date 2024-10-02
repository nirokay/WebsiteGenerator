## Html Generator
## ==============
##
## This module generates `HtmlElement` objects, that are used in building up
## your html page.

import std/[sequtils, strutils, strformat, sequtils, tables, algorithm]
import ./targetDirectory

var websitegeneratorGenerateSelfClosingTags*: bool = true ## Option to set if to generate self-closing tags (`br />` instead of `<br>`)

type
    HtmlElementAttribute* = object
        ## Attribute for an `HtmlElement`
        name*, value*: string

    HtmlElement* = object
        ## Object for HTML elements (Example: `<p> ... </p>`)
        tag*, content*: string
        children*: seq[HtmlElement]
        tagAttributes*: seq[HtmlElementAttribute] = @[]
        forceTwoTags*: bool ## Forces to generate an opening and closing tag (does not generate normally, when `content` is empty)

    HtmlDocument* = object
        ## HTML document object
        file*: string
        htmlAttributes*, bodyAttributes*: seq[HtmlElementAttribute]
        head*, body*, bodyEnd*: seq[HtmlElement]

const websitegeneratorRawTextElementIdentifier: string = "{.websitegenerator-raw-text.}"
proc isRawText(element: HtmlElement): bool = element.tag == websitegeneratorRawTextElementIdentifier
proc rawText*(text: string): HtmlElement = HtmlElement(
    tag: websitegeneratorRawTextElementIdentifier,
    content: text
) ## Raw text inside HTML

proc sortAlphabetically(x, y: HtmlElementAttribute): int =
    cmp(x.name, y.name)
proc sortAlphabetically(x, y: string): int =
    cmp(x, y)

proc newHtmlElement*(tag, content: string): HtmlElement = HtmlElement(
    tag: tag,
    children: @[rawText(content)],
) ## Generic builder for html elements without tag attributes
proc newHtmlElement*(tag: string, tagAttributes: seq[HtmlElementAttribute], content: string = ""): HtmlElement =
    ## Generic builder for html elements with tag attributes and maybe content
    result = HtmlElement(
        tag: tag,
        tagAttributes: tagAttributes
    )
    if content != "": result.children = @[rawText(content)]
proc newHtmlElement*(tag: string, tagAttributes: varargs[HtmlElementAttribute]): HtmlElement =
    ## Generic builder for html elements with no children and multiple tag attributes
    result = newHtmlElement(tag, tagAttributes.toSeq())

proc newHtmlElement*(tag: string, child: HtmlElement): HtmlElement = HtmlElement(
    tag: tag,
    children: @[child],
) ## Generic builder for html elements without tag attributes
proc newHtmlElement*(tag: string, tagAttributes: seq[HtmlElementAttribute], children: seq[HtmlElement]): HtmlElement = HtmlElement(
    tag: tag,
    children: children,
    tagAttributes: tagAttributes
) ## Generic builder for html elements with tag attributes and maybe children


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
        # result = " " & attribute.name & "=\"" & attribute.value & "\""
        result = &""" {attribute.name}='{attribute.value}'"""
    else:
        result = &""" {attribute.name}"""
proc `$`*(attributes: seq[HtmlElementAttribute]): string =
    ## Converts a sequence of HtmlElementAttribute to raw html string
    for attribute in attributes:
        result &= $attribute

#[
proc `$`*(element: HtmlElement): string =
    ## Converts HtmlElement to raw html string
    var
        attributes: string
        rawAttributes: seq[HtmlElementAttribute] = element.tagAttributes.deduplicate()
        tableAttributes: Table[string, seq[HtmlElementAttribute]]
    # TODO: find an actual fix to weird doubling of attributes (instead of calling `.deduplicate()`)
    # Reproduction of the bug:
    # ========================
    # $newElement("e", "this is content").add(
    #     attr("attribute"),
    #     attr("attribute-with-stuff", "stuff")
    # ) == "<e attribute attribute-with-stuff=\"stuff\" attribute attribute-with-stuff=\"stuff\">this is content</e>"

    # Add class attribute:
    if element.class != "":
        rawAttributes.add(
            newAttribute("class", element.class)
        )

    for attribute in rawAttributes:
        let
            name: string = attribute.name
            value: string = attribute.value
        if not tableAttributes.hasKey(name):
            tableAttributes[name] = @[]
        tableAttributes[name].add attr(name, value)

    # Attributes to string:
    if tableAttributes.len() != 0:
        var formattedAttributes: seq[HtmlElementAttribute]
        for name, attributes in tableAttributes:
            var values: seq[string]
            for attribute in attributes:
                values.add attribute.value
            formattedAttributes.add attr(name, values.join(" "))
        attributes = formattedAttributes.join("")

    # Generate html:
    if element.tag == "":
        # Raw string to html document
        result = element.content
    elif element.content == "" and element.children.len() == 0 and not element.forceTwoTags:
        # Only one tag, without closing one (for example <img ... >)
        result = &"<{element.tag}{$attributes}" & (
            if websitegeneratorGenerateSelfClosingTags: " /"
            else: ""
        ) & ">"
    else:
        # Closing and opening tags with content:
        result = &"<{element.tag}{$attributes}>{element.content}{$element.children}</{element.tag}>"
]#
proc `$`*(element: HtmlElement): string =
    # Raw text just returns content:
    if element.tag == websitegeneratorRawTextElementIdentifier:
        return element.content

    # Content:
    var content: string = element.content
    for child in element.children:
        content &= $child

    # Attributes:
    var formattedAttributes: Table[string, seq[string]]
    for attr in element.tagAttributes:
        if not formattedAttributes.hasKey(attr.name): formattedAttributes[attr.name] = @[attr.value] ## Assign new attribute
        else: formattedAttributes[attr.name].add attr.value ## Add to attribute value

    var attributes: seq[HtmlElementAttribute]
    for name, values in formattedAttributes:
        var sortedValues: seq[string] = values
        sortedValues.sort(sortAlphabetically)
        attributes.add newAttribute(name, sortedValues.join(" ").replace("'", "\\'"))
    attributes.sort(sortAlphabetically)

    # Construct string:
    if content == "" and not element.forceTwoTags:
        result = &"<{element.tag}{attributes}" & (
            if websitegeneratorGenerateSelfClosingTags: " /"
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
    lines.add("<!DOCTYPE html>")

    # Html tag:
    if document.htmlAttributes.len() == 0:
        lines.add("<html>")
    else:
        var attributes = document.htmlAttributes
        attributes.sort(sortAlphabetically)
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
            attributes.sort(sortAlphabetically)
            lines.add("<body" & $attributes & ">")

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
    document.file.toTargetDirectory().writeFile($document)

proc writeFile*(document: HtmlDocument, fileName: string) {.raises: [IOError, KeyError].} =
    ## Writes the html document to disk with custom file name/path.
    filename.toTargetDirectory().writeFile($document)


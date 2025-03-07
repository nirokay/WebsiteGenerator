import std/[strutils, sequtils]
import html, targetDirectory

type
    XmlElement* = HtmlElement
    XmlElementAttribute* = HtmlElementAttribute
    XmlDocument* = object
        file*: string
        prolog*: seq[XmlElementAttribute]
        body*: seq[XmlElement]

const defaultXmlProlog: seq[XmlElementAttribute] = @[
    attr("version", "1.0"),
    attr("encoding", "UTF-8")
]

proc newXmlDocument*(file: string, prolog: seq[XmlElementAttribute] = defaultXmlProlog): XmlDocument =
    result = XmlDocument(
        file: file,
        prolog: prolog
    )

proc add*(document: var XmlDocument, element: XmlElement) =
    ## Adds a single XML element to the body of the document.
    document.body.add(element)
proc add*(document: var XmlDocument, elements: seq[XmlElement]) =
    ## Adds multiple `XmlElement`s to the body of the document.
    for element in elements: document.add(element)
proc add*(document: var XmlDocument, elements: varargs[XmlElement]) =
    ## Adds multiple `XmlElement`s to the body of the document.
    document.add(toSeq(elements))


proc newXmlElement*(tag, content: string): XmlElement =
    ## Generic builder for XML elements without tag attributes
    result = newHtmlElement(tag, content)
proc newXmlElement*(tag: string, tagAttributes: seq[XmlElementAttribute], content: string = ""): XmlElement =
    ## Generic builder for XML elements with tag attributes and maybe content
    result = newHtmlElement(tag, tagAttributes, content)
proc newXmlElement*(tag: string, tagAttributes: varargs[XmlElementAttribute]): XmlElement =
    ## Generic builder for XML elements with no children and multiple tag attributes
    result = newXmlElement(tag, tagAttributes.toSeq())

proc newXmlElement*(tag: string, child: XmlElement): XmlElement =
    ## Generic builder for XML elements without tag attributes
    result = newHtmlElement(tag, child)
proc newXmlElement*(tag: string, children: seq[XmlElement]): XmlElement =
    ## Generic builder for XML elements without tag attributes
    result = newHtmlElement(tag, children)
proc newXmlElement*(tag: string, tagAttributes: seq[XmlElementAttribute], children: seq[XmlElement]): XmlElement =
    ## Generic builder for XML elements with tag attributes and maybe children
    result = newHtmlElement(tag, tagAttributes, children)


proc `$`*(document: XmlDocument): string =
    ## Converts `XmlDocument` to `string`
    var prolog: string = $newXmlElement("?xml",
        if unlikely document.prolog == @[]: defaultXmlProlog
        else: document.prolog
    )
    prolog = block:
        if likely prolog.endsWith("></?xml>"): prolog[0 .. ^9] & "?>"
        else: prolog

    var elements: seq[XmlElement] = @[rawText(prolog)] & document.body
    result = $elements


proc writeFile*(document: XmlDocument) {.raises: [IOError, ValueError].} =
    ## Writes the XML document to disk. Operation fails with `IOError`, if `document.file == ""`.
    if unlikely document.file.strip() == "":
        raise ValueError.newException("Document file name is unspecified, cannot write to filesystem.")
    document.file.toTargetDirectory().writeFile($document)

proc writeFile*(document: XmlDocument, fileName: string) {.raises: [IOError, KeyError].} =
    ## Writes the XML document to disk with custom file name/path.
    filename.toTargetDirectory().writeFile($document)

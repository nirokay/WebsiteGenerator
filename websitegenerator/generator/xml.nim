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

#[
proc newXmlElement*(tag: string): XmlElement = newHtmlElement(tag)
proc newXmlElement*(tag: string, child: XmlElement): XmlElement = newHtmlElement(tag, <$>child)

proc newXmlElement*(tag: string, children: seq[XmlElement]): XmlElement = newHtmlElement(tag, <$>children)
proc newXmlElement*(tag: string, children: varargs[XmlElement]): XmlElement = newHtmlElement(tag, <$>children)

proc newXmlElement*(tag: string, attributes: seq[XmlElementAttribute]): XmlElement = newHtmlElement(tag, attributes)
proc newXmlElement*(tag: string, attributes: seq[XmlElementAttribute], child: XmlElement): XmlElement = newHtmlElement(tag, attributes, <$>child)
proc newXmlElement*(tag: string, attributes: seq[XmlElementAttribute], children: seq[XmlElement]): XmlElement = newHtmlElement(tag, attributes, <$>children)
proc newXmlElement*(tag: string, attributes: seq[XmlElementAttribute], children: varargs[XmlElement]): XmlElement = newHtmlElement(tag, attributes, <$>children)
]#

proc newXmlElement*(tag: string): HtmlElement = newHtmlElement(tag)
proc newXmlElement*(tag: string, attributes: seq[HtmlElementAttribute]): HtmlElement = newHtmlElement(tag, attributes)

newElementGenerator(newXmlElement, XmlElement, XmlElement)
newElementGenerator(newXmlElement, XmlElement, AnyToHtml)

proc `$`*(document: XmlDocument): string =
    ## Converts `XmlDocument` to `string`
    let prologElement: XmlElement = newXmlElement("?xml", defaultXmlProlog)
    var prolog: string = $prologElement
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


runnableExamples:
    import websitegenerator

    var document: XmlDocument = newXmlDocument(".output/bookstore.xml")
    let
        # You can use this type of syntax:
        firstStore: XmlElement = newXmlElement("bookstore",
            newXmlElement("book",
                newXmlElement("title", "The Dictionary"),
                newXmlElement("desc", "All words")
            ).addattr("lang", "en")
        )
        # Or this funky thing (implemented in `sugar` module):
        secondStore: XmlElement = "bookstore" => @[
            "book"["lang" -= "en"] => @[
                "title" => "The Dictionary 2",
                "desc" => "MORE WORDS??"
            ],
            # And you can mix-and-match:
            newXmlElement("book",
                newXmlElement("title", "Katzen"),
                newXmlElement("desc", "Katzen sind toll!!!!!")
            ).add(
                attr("lang", "de")
            )
        ]

    document.add newXmlElement("departments", @[firstStore, secondStore])
    document.writeFile()


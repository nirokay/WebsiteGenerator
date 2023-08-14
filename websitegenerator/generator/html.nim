import std/[strutils, strformat]


type
    HtmlElementOverride* = object
        name*, value*: string

    HtmlElement* = object
        tag*, class*, content*: string
        tagOverrides*: seq[HtmlElementOverride] = @[]

    HtmlDocument* = object
        file*: string
        head*, body*: seq[HtmlElement]


proc newElement*(tag, content: string): HtmlElement = HtmlElement(
    tag: tag,
    content: content,
)
proc newElement*(tag: string, tagOverrides: seq[HtmlElementOverride], content: string = ""): HtmlElement = HtmlElement(
    tag: tag,
    content: content,
    tagOverrides: tagOverrides
)
proc newElement*(tag: string, tagOverrides: varargs[HtmlElementOverride]): HtmlElement =
    var overrides: seq[HtmlElementOverride]
    for override in tagOverrides:
        overrides.add(override)
    result = newElement(tag, overrides)

proc newOverride*(name, value: string): HtmlElementOverride = HtmlElementOverride(
    name: name,
    value: value
)

proc newDocument*(fileName: string): HtmlDocument = HtmlDocument(
    file: fileName
)


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


proc `$`*(override: HtmlElementOverride): string =
    ## Converts HtmlElementOverride to raw html string
    if override.value != "":
        result = " " & override.name & "=\"" & override.value & "\""
    else:
        result = " " & override.name
proc `$`*(overrides: seq[HtmlElementOverride]): string =
    ## Converts a sequence of HtmlElementOverride to raw html string
    for override in overrides:
        result &= $override

proc `$`*(element: HtmlElement): string =
    ## Converts HtmlElement to raw html string
    var
        overrides: string
        rawOverrides: seq[HtmlElementOverride] = element.tagOverrides

    # Add class override:
    if element.class != "":
        rawOverrides.add(
            newOverride("class", element.class)
        )

    # Overrides to string:
    if rawOverrides.len() != 0:
        overrides = rawOverrides.join("")

    # Generate html:
    if element.tag == "":
        # Raw string to html document
        result = element.content
    elif element.content == "":
        # Only one tag, without closing one (for example <img ... >)
        result = &"<{element.tag}{$overrides}>"
    else:
        # Closing and opening tags with content:
        result = &"<{element.tag}{$overrides}>{element.content}</{element.tag}>"
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

    lines.add("<head>")
    lines.add(indent($document.head, indentation))
    lines.add("</head>")

    lines.add("<body>")
    lines.add(indent($document.body, indentation))
    lines.add("</body>")

    lines.add("</html>")
    result = lines.join("\n")


proc writeFile*(document: HtmlDocument) {.raises: [IOError, ValueError].} =
    ## Writes the html document to disk. Operation fails with `IOError`, if `document.file == ""`.
    if document.file == "":
        raise ValueError.newException("Document file name is unspecified, cannot write to filesystem.")
    document.file.writeFile($document)

proc writeFile*(document: HtmlDocument, fileName: string) {.raises: [IOError, ValueError].} =
    ## Writes the html document to disk with custom file name/path.
    filename.writeFile($document)


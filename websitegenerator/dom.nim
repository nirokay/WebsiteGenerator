import std/[options, tables]
export options
import generators

proc searchThroughDocument(document: HtmlDocument, field, value: string): seq[HtmlElement] =
    ## Searches through every element in the DOM and returns all matching ones
    ## TODO: THIS WILL CHANGE, also wtf is this nesting xD
    for elements in [document.head, document.body]:
        for element in elements:
            block currentElement:
                for attribute in element.tagAttributes:
                    if attribute.name == field and attribute.value == value:
                        result.add element
                        break currentElement

proc filterFirstElement(document: HtmlDocument, searchProc: proc, value: string): Option[HtmlElement] =
    ## Searches through every element in the DOM and returns the first matching one
    let elements: seq[HtmlElement] = document.searchProc(value)
    if elements.len() == 0: result = none HtmlElement
    else: result = some elements[0]

proc getElementsById*(document: HtmlDocument, id: string): seq[HtmlElement] =
    ## Searches through the DOM and returns all elements with matching IDs
    result = document.searchThroughDocument("id", id)
proc getElementById*(document: HtmlDocument, id: string): Option[HtmlElement] =
    ## Searches through the DOM and returns the first element with matching ID
    result = document.filterFirstElement(getElementsById, "id")


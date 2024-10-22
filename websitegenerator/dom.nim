import std/[strutils, sequtils]
import generators

type MatchingStyle* = enum ## Matching style
    MatchStrict ## Only matches when two elements strictly match
    MatchOnlyFieldName ## Matches whenever the field exists
    MatchSubstring ## Matches case-sensitively if substring is contained in value
    MatchCaseInsensitiveSubstring ## Matches case-insensitively if substring is contained in value
    MatchSpaceSeperatedContains ## Matches case-sensitively if contains element (seperated by spaces) `"Hello World" -> @["Hello", "World"]`
    MatchSpaceSeperatedContainsCaseInsensitive ## Matches case-insensitively if contains element (seperated by spaces) `"Hello world" -> @["hello", "world"]`

proc findMatchingChildren(element: HtmlElement, field, value: string, matchingStyle: MatchingStyle): seq[HtmlElement] =
    ## Recursively finds matching HTML elments
    for i, attribute in element.getSortedAttributes().deduplicate(): # `deduplicate` should not be needed here
        let
            attrName: string = attribute.name.strip()
            attrValue: string = attribute.value.strip()
        if attrName != field: continue

        proc MatchStrict(): bool =
            result = attrValue == value
        proc MatchOnlyFieldName(): bool =
            result = true # already filtered the name above, so just returns `true`
        proc MatchSubstring(attrValue: string = attrValue, value: string = value): bool =
            result = attrValue.contains(value)
        proc MatchCaseInsensitiveSubstring(): bool =
            result = MatchSubstring(attrValue.toLower(), value.toLower())
        proc MatchSpaceSeperatedContains(attrValue: string = attrValue, value: string = value): bool =
            result = value in attrValue.split(" ")
        proc MatchSpaceSeperatedContainsCaseInsensitive(): bool =
            result = MatchSpaceSeperatedContains(attrValue.toLower(), value.toLower())

        let foundMatch: bool = block:
            # idk if i should be proud or ashamed of this code:
            case matchingStyle:
            of MatchStrict: MatchStrict()
            of MatchOnlyFieldName: MatchOnlyFieldName()
            of MatchCaseInsensitiveSubstring: MatchCaseInsensitiveSubstring()
            of MatchSubstring: MatchSubstring()
            of MatchSpaceSeperatedContains: MatchSpaceSeperatedContains()
            of MatchSpaceSeperatedContainsCaseInsensitive: MatchSpaceSeperatedContainsCaseInsensitive()

        # Loop again, if nothing found:
        if not foundMatch: continue

        # Break loop, if found:
        result = @[element]
        break

    # Recursively walks on children (aka trampling children):
    for child in getChildren(element):
        result &= child.findMatchingChildren(field, value, matchingStyle)


proc getElementsBy*(document: HtmlDocument, field, value: string, matchingStyle: MatchingStyle = MatchStrict): seq[HtmlElement] =
    ## Finds all matching HTML elements in a document by field and value
    for part in [document.head, document.body]:
        for element in part:
            result &= element.findMatchingChildren(field, value, matchingStyle)
proc getElementsBy*(document: HtmlDocument, field: string, matchingStyle: MatchingStyle = MatchStrict): seq[HtmlElement] =
    ## Finds all matching HTML elements in a document by field (requires empty value)
    result = document.getElementsBy(field, "", matchingStyle)


proc getElementsById*(document: HtmlDocument, id: string, matchingStyle: MatchingStyle = MatchStrict): seq[HtmlElement] =
    ## Finds all elements with matching IDs
    result = document.getElementsBy("id", id, matchingStyle)
proc getElementsByClass*(document: HtmlDocument, class: string, matchingStyle: MatchingStyle = MatchSpaceSeperatedContains): seq[HtmlElement] =
    ## Finds all elements with matching classes
    result = document.getElementsBy("class", class, matchingStyle)


proc isTag*(element: HtmlElement, tag: string): bool =
    ## Checks if the elements tag is matching
    result = element.tag == tag

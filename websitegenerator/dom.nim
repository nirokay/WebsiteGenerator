import std/[strutils]
import generators

type MatchingStyle* = enum ## Matching style
    MatchStrict,
    MatchOnlyFieldName,
    MatchCaseInsensitiveSubstring, MatchCaseSensitiveSubstring,
    MatchSpaceSeperatedContains

proc findMatchingChildren(element: HtmlElement, field, value: string, matchingStyle: MatchingStyle): seq[HtmlElement] =
    ## Recursively finds matching HTML elements
    for attribute in element.getSortedAttributes():
        if attribute.name != field: continue
        # Break/Continue loop, if not matched:
        case matchingStyle:
        of MatchStrict:
            if attribute.value != value: continue
        of MatchOnlyFieldName:
            discard
        of MatchCaseSensitiveSubstring:
            if not attribute.value.contains(value): continue
        of MatchCaseInsensitiveSubstring:
            if not attribute.value.toLower().contains(value.toLower()): continue
        of MatchSpaceSeperatedContains:
            let parts: seq[string] = value.split(", ")
            echo "Splitting '" & value & "': " & $parts # TODO: wtf? parts are not being split, only a signular one is present
            block deathmatch:
                for part in parts:
                    echo part & " ? " & value
                    if part.strip() == value: break deathmatch
                continue
        # Matches, add to the pile:
        result &= element
    for child in element.children:
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

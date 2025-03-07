## Websitegenerator settings
## -------------------------
##
## Several options exposed for the user of the library to modify to their liking :)

const
    wgsSelfClosingTagsTrailingSlash* {.booldefine.}: bool = true ## Setting: Trailing slash for self-closing elements
    wgsOmitDocumentDoctype* {.booldefine.}: bool = false ## Setting: Omits `<!DOCTYPE html>` at beginning of HTML document
    wgsOmitDocumentHtmlTags* {.booldefine.}: bool = false ## Setting: Omits `<html>` and `</html>` tags of an HTML document
    wgsSortHtmlAttributes* {.booldefine.}: bool = true ## Setting: Alphabetically sorts HTML attributes
    wgsSortCssProperties* {.booldefine.}: bool = false ## Setting: Alphabetically sorts CSS properties (reordering may break CSS in some instances)
    wgsHtmlEntitiesUseNumbersInsteadOfName* {.booldefine.}: bool = false ## Setting: Uses numbers ("<" -> "&#60;") instead of names ("<" -> "&lt;") for HTML Entity stringification
    wgsInternalRawTextHtmlTag* {.booldefine.}: string = "{.websitegenerator-raw-text.}" ## Setting: Internal tag for raw text, alongside ""
    wgsSugarAppendingRawTextSeparatorTag* {.strdefine.}: string = "br" ## Setting: Join string for raw text appending via sugar module

# Legacy variables:
template websitegeneratorGenerateSelfClosingTags*: untyped {.deprecated: "use `wgsSelfClosingTagsTrailingSlash` instead".} = wgsSelfClosingTagsTrailingSlash
template websitegeneratorRawTextElementIdentifier*: untyped {.deprecated: "use `wgsInternalRawTextHtmlTag` instead".} = wgsInternalRawTextHtmlTag
template websitegeneratorSugarAppendingRawTextSeperator*: untyped {.deprecated: "use `wgsSugarAppendingRawTextSeparatorTag` instead".} = wgsSugarAppendingRawTextSeparator # typo included
template websitegeneratorSugarAppendingRawTextSeparator*: untyped {.deprecated: "use `wgsSugarAppendingRawTextSeparatorTag` instead".} = wgsSugarAppendingRawTextSeparator

## Websitegenerator settings
## -------------------------
##
## Several options exposed for the user of the library to modify to their liking :)

type
    WebsitegeneratorSettingsGeneration* = object
        generateSelfClosingTags*: bool = true            ## When enabled, generates `<br />` instead of `<br>`
        omitDocumentDoctype*: bool = false               ## Omit `<!DOCTYPE html>` at the top of the document
        omitDocumentHtmlTags*: bool = false              ## Omit `<html>` and `</html>` tags of a document
        sortHtmlAttributes*: bool = true                 ## Alphabetical sorting of HTML attributes (`<img source="image.png" alt="Some image" />` -> `<img alt="Some image" source="image.png" />`)
        sortCssProperties*: bool = false                 ## Alphabetical sorting of CSS properties (!sorting may break some CSS rules!) (`.some-class { color: White; background-color: Black; }` -> `.some-class { background-color: Black; color: White; }`)
        useHtmlEntityNumbersInsteadOfName*: bool = false ## Uses numbers ("<" -> "&#60;") instead of names ("<" -> "&lt;") for HTML Entity stringification

    WebsitegeneratorSettingsInternal* = object
        rawTextHtmlTag*: string = "{.websitegenerator-raw-text.}" ## Internal tag for raw text, alongside ""

    WebsitegeneratorSettings* = object
        generation*: WebsitegeneratorSettingsGeneration = WebsitegeneratorSettingsGeneration()
        internal*: WebsitegeneratorSettingsInternal = WebsitegeneratorSettingsInternal()


var websitegeneratorSettings*: WebsitegeneratorSettings = WebsitegeneratorSettings() ## websitegenerator settings object, use this to change various settings

# Legacy variables:
template websitegeneratorGenerateSelfClosingTags*: untyped {.deprecated: "use `websitegeneratorSettings.generation.generateSelfClosingTags` instead".} = websitegeneratorSettings.generation.generateSelfClosingTags
template websitegeneratorRawTextElementIdentifier*: untyped {.deprecated: "use `websitegeneratorSettings.internal.rawTextHtmlTag` instead".} = websitegeneratorSettings.internal.rawTextHtmlTag

## Mimetype Generator
## ==================
##
## This module reads a csv file and turns it into valid Nim code, so my fingers do not die from
## typing every single Mimetype by hand.

import std/[strutils, strformat]

const
    targetFile: string = "../../mimetypes.nim"
    files: seq[string] = @[
        "application",
        "audio",
        "font",
        "image",
        "message",
        "model",
        "multipart",
        "text",
        "video"
    ]

var nimFile: seq[string] = @[
    "## MimeType module",
    "## ===============",
    "##",
    "## This module was automatically generated using https://www.iana.org/assignments/media-types/media-types.xhtml !",
    "",
    "type MimeType* = enum"
]

var cachedEncounters: seq[string]
for i, file in files:
    let
        csvFile: string = &"csv/{file}.csv"
        rawFile: string = csvFile.readFile()

    if i != 0: nimFile.add ""
    nimFile.add @[
        "",
        "    # ----------------------------------------------------------------------------------------------",
        &"    # {file.capitalizeAscii()}: (https://www.iana.org/assignments/media-types/media-types.xhtml#{file})",
        "    # ----------------------------------------------------------------------------------------------",
        ""
    ]

    var lines: seq[string] = rawFile.strip().split("\n")
    for line in lines[1 .. ^1]:
        let parts: seq[string] = line.strip().split(",")
        var
            name: string
            mime: string
            reference: string
        try:
            name = parts[0]
            mime = &"{file}/{name}" # Unreliable `Template` csv field
            reference = parts[2]
        except IndexDefect as e:
            echo &"{e.name} ({parts}): {e.msg}"

        # Filter bad entries:
        if ' ' in mime:
            echo &"Skipping bad entry: " & parts.join(" | ")
            continue

        let enumName: string = block:
            var
                result: string
                skipChar: bool
            var current: string = mime.toLower()#.split("+")[0]
            for i, c in current:
                # Skip current character:
                if skipChar:
                    skipChar = false
                    continue
                # Capitalise next character:
                if c notin 'a' .. 'z' and c notin '0' .. '9':
                    if i + 1 >= mime.len():
                        result.add capitalizeAscii(
                            case c:
                            of '.': "dot"
                            of '-': "minus"
                            of '/': "slash"
                            of '+': "plus"
                            else: ""
                        )
                        echo &"Weird entry, ending in weird character: {mime}"
                        continue
                    result.add toUpper($current[i + 1])[0] # Amazing code
                    skipChar = true
                    continue
                # Normal character:
                result.add c
            result


        if enumName in cachedEncounters:
            echo "Duplicate: " & enumName
            continue
        nimFile.add(
            &"    {enumName} = \"{mime}\"  ## Reference: {reference}"
        )
        cachedEncounters.add enumName

targetFile.writeFile(nimFile.join("\n"))

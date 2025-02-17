# Package

version       = "2.3.0"
author        = "nirokay"
description   = "A static html/css generator."
license       = "GPL-3.0-only"


# Dependencies

requires "nim >= 2.0.0"


# Tasks
task assemble, "Assembles auto-generated modules":
    proc generateThis(path: string) =
        let
            commands: seq[string] = @[
                "cd ./websitegenerator/auto/" & path & "/ || exit 1",
                "nim r --hints:off generateFromCsv.nim"
            ]
            command: string = commands.join(" ; ")
        echo "--- Executing command: " & command
        exec command

    generateThis("mimetypes")
    generateThis("attributes")
    generateThis("properties")

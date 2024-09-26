# Package

version       = "1.0.11"
author        = "nirokay"
description   = "A basic static html/css generator."
license       = "GPL-3.0-only"


# Dependencies

requires "nim >= 2.0.0"


# Tasks
task assemble, "Assembles auto-generated modules":
    proc generateThis(path: string) =
        let
            commands: seq[string] = @[
                "cd ./websitegenerator/auto/" & path & "/ || exit 1",
                "nim r generateFromCsv.nim"
            ]
            command: string = commands.join(" ; ")
        echo "--- Executing command: " & command
        exec command

    generateThis("mimetypes")
    generateThis("attributes")

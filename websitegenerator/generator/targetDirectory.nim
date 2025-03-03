## Target Directory module
## =======================
##
## This module adds support for setting a target directory for the generated HTML and CSS files.

import std/[os]

var targetDirectory: string = "."

proc validateTargetDirectory() =
    if not targetDirectory.dirExists():
        targetDirectory.createDir()

proc setTargetDirectory*(path: string) =
    ## Sets the target directory for generated HTML and CSS to output to
    targetDirectory = path
    validateTargetDirectory()

proc toTargetDirectory*(path: string): string =
    ## Returns the path with `targetDirectory` prepended to it
    result = targetDirectory / path

proc getTargetDirectory*(): string =
    ## Returns the path set by the user
    result = targetDirectory

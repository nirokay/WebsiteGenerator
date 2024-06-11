import std/[unittest, strformat]
import websitegenerator

const comment: string = "test test hello :3"

test "HTML comment":
    check $htmlComment(comment) == &"<!-- {comment} -->"

test "Single-line CSS comment":
    check $cssComment(comment) == &"/* {comment} */"

test "Multi-line CSS comment":
    check $cssComment(@[comment, comment, comment]) == &"""/**
 * {comment}
 * {comment}
 * {comment}
*/"""

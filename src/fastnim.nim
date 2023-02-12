import std/monotimes
import std/macros
import std/json
import fastnim/types
export json
import std/times

macro describe*(s: string, body: typed): untyped =
  mixin ctx
  result = quote do:
    block:
      let start = getMonoTime()
      `body`
      let usedTime = getMonoTime() - start
      ctx.data[$ctx.count] = %* $usedTime

proc finish*() =
  echo ctx.data
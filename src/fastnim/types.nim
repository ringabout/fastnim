import std/json

type
  Context* = ref object
    data*: JsonNode
    count*: int

var ctx* = new Context
ctx.data = newJObject()
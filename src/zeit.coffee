conversions =
  second: -> @ * 1000
  minute: -> @ * 60.seconds
  hour: -> @ * 60.minute

for conversion, method of conversions
  set = (conversion) ->
    Object.defineProperty Number.prototype,
    conversion,
    get: method

  set conversion
  set conversion + 's'

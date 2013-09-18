_ = require 'underscore'

class Event
  constructor: ()->
    @callbacks = {}

  on: (name, func)->
    @callbacks[name] = [] unless @callbacks[name] instanceof Array
    @callbacks[name].push func

  fire: (name, options...)->
    @callbacks[name] = [] unless @callbacks[name] instanceof Array
    _(@callbacks[name]).each(
      (func)->
        func.apply @, options
      @
    )

module.exports = Event

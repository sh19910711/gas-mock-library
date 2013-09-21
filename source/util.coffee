_ = require 'underscore'
crypto = require 'crypto'

class Util
  @getRandomString: (length)->
    return crypto.randomBytes(length).toString('hex')

  @getAlphabetNumber: (s)->
    res = 1
    base = 1
    _(s).each (c)->
      code = c.charCodeAt(0) - "A".charCodeAt(0)
      res += base * code
      base *= 26
    return res

  @log: (type, messages...)->
    console.log.apply console, messages if Util.log_visible[type]

  @log_visible = {}

module.exports = Util

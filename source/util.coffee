_ = require 'underscore'
crypto = require 'crypto'

class Util
  @getRandomString: (length)->
    return crypto.randomBytes(length).toString('hex')

  @log: (type, messages...)->
    console.log.apply console, messages if Util.log_visible[type]

  @log_visible = {}

module.exports = Util

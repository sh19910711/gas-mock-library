_ = require 'underscore'
Util = require './util'
Spreadsheet = require './spreadsheet'

class SpreadsheetApp
  constructor: ->

  create: (name)->
    if arguments.length == 1
      loop
        id = Util.getRandomString(32)
        break unless _(@spreadsheets).has(id)
      spreadsheet = new Spreadsheet(id, this)
      @spreadsheets[id] = spreadsheet
      @activeSpreadsheet = null

      spreadsheet.rename name
      new_sheet = spreadsheet.insertSheet()

      return spreadsheet
    else
      throw new Error 'ToImplement'

  flush: ()->
    throw new Error 'ToImplement'

  getActive: ()->
    throw new Error 'ToImplement'

  getActiveRange: ()->
    throw new Error 'ToImplement'

  getActiveSheet: ()->
    throw new Error 'ToImplement'

  getActiveSpreadsheet: ()->
    return @activeSpreadsheet

  newDataValidation: ()->
    throw new Error 'ToImplement'

  open: ()->
    throw new Error 'ToImplement'

  openById: (id)->
    return @spreadsheets[id]

  openByUrl: ()->
    throw new Error 'ToImplement'
  
  setActiveRange: ()->
    throw new Error 'ToImplement'

  setActiveSheet: ()->
    throw new Error 'ToImplement'

  setActiveSpreadsheet: (spreadsheet)->
    @activeSpreadsheet = spreadsheet

  spreadsheets: {}
  activeSpreadsheet: null

module.exports = SpreadsheetApp

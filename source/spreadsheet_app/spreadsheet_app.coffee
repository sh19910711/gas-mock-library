Spreadsheet = require '../spreadsheet'

class SpreadsheetApp
  constructor: ->

  create: ()->
    if arguments.length == 1
      return new Spreadsheet
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
    throw new Error 'ToImplement'

  newDataValidation: ()->
    throw new Error 'ToImplement'

  open: ()->
    throw new Error 'ToImplement'

  openById: ()->
    throw new Error 'ToImplement'

  openByUrl: ()->
    throw new Error 'ToImplement'
  
  setActiveRange: ()->
    throw new Error 'ToImplement'

  setActiveSheet: ()->
    throw new Error 'ToImplement'

  setActiveSpreadsheet: ()->
    throw new Error 'ToImplement'

module.exports = SpreadsheetApp

_     = require 'underscore'
Util  = require './util'
Sheet = require './sheet'

class Spreadsheet
  constructor: (id)->
    @id = id
    @data = {}
    @name = ""
    @sheets = {}
    @sheetNames = {}
    @sheetCount = 0

  addEditor: ()->
    throw new Error 'ToImplement'

  addEditors: ()->
    throw new Error 'ToImplement'

  addMenu: ()->
    throw new Error 'ToImplement'

  addViewer: ()->
    throw new Error 'ToImplement'

  addViewers: ()->
    throw new Error 'ToImplement'

  appendRow: ()->
    Util.log "verbose", "Spreadsheet#appendRow"
    return @activeSheet.appendRow.apply @activeSheet, arguments

  autoResizeColumn: ()->
    throw new Error 'ToImplement'

  copy: ()->
    throw new Error 'ToImplement'

  deleteActiveSheet: ()->
    throw new Error 'ToImplement'

  deleteColumn: ()->
    throw new Error 'ToImplement'

  deleteColumns: ()->
    throw new Error 'ToImplement'

  deleteRow: ()->
    Util.log "verbose", "Spreadsheet#deleteRow"
    return @activeSheet.deleteRow.apply @activeSheet, arguments

  deleteRows: ()->
    throw new Error 'ToImplement'

  deleteSheet: ()->
    throw new Error 'ToImplement'

  duplicateActiveSheet: ()->
    throw new Error 'ToImplement'

  getActiveCell: ()->
    throw new Error 'ToImplement'

  getActiveRange: ()->
    throw new Error 'ToImplement'

  getActiveSheet: ()->
    Util.log "verbose", "@Spreadsheet#getActiveSheet", @activeSheet
    return @activeSheet

  getColumnWidth: ()->
    throw new Error 'ToImplement'

  getDataRange: ()->
    throw new Error 'ToImplement'

  getEditors: ()->
    throw new Error 'ToImplement'

  getFormUrl: ()->
    throw new Error 'ToImplement'

  getFrozenColumns: ()->
    throw new Error 'ToImplement'

  getFrozenRows: ()->
    throw new Error 'ToImplement'

  getId: ()->
    return @id

  getLastColumn: ()->
    throw new Error 'ToImplement'

  getLastRow: ()->
    throw new Error 'ToImplement'

  getName: ()->
    Util.log 'verbose', '@Spreadsheet#getName: name = ', @name
    return @name

  getNumSheets: ()->
    throw new Error 'ToImplement'

  getOwner: ()->
    throw new Error 'ToImplement'

  getRange: ()->
    throw new Error 'ToImplement'

  getRangeByName: ()->
    throw new Error 'ToImplement'

  getRowHeight: ()->
    throw new Error 'ToImplement'

  getSheetByName: (name)->
    Util.log 'verbose', '@Spreadsheet#getSheetByName'
    return @sheetNames[name]

  getSheetId: ()->
    throw new Error 'ToImplement'

  getSheetName: ()->
    throw new Error 'ToImplement'

  getSheetProtection: ()->
    throw new Error 'ToImplement'

  getSheetValues: ()->
    throw new Error 'ToImplement'

  getSheets: ()->
    Util.log "verbose", "@Spreadsheet#getSheets"
    return _(@sheets).keys().map(
      (key)->
        return @sheets[key].sheet
      @
    )

  getSpreadsheetLocale: ()->
    throw new Error 'ToImplement'

  getSpreadsheetTimeZone: ()->
    throw new Error 'ToImplement'

  getUrl: ()->
    throw new Error 'ToImplement'

  getViewers: ()->
    throw new Error 'ToImplement'

  hideColumn: ()->
    throw new Error 'ToImplement'

  hideRow: ()->
    throw new Error 'ToImplement'

  insertColumnAfter: ()->
    throw new Error 'ToImplement'

  insertColumnBefore: ()->
    throw new Error 'ToImplement'

  insertColumnsAfter: ()->
    throw new Error 'ToImplement'

  insertColumnsBefore: ()->
    throw new Error 'ToImplement'

  insertImage: ()->
    throw new Error 'ToImplement'

  insertRowAfter: ()->
    throw new Error 'ToImplement'

  insertRowBefore: ()->
    throw new Error 'ToImplement'

  insertRowsAfter: ()->
    throw new Error 'ToImplement'

  insertRowsBefore: ()->
    throw new Error 'ToImplement'

  insertSheet: ()->
    Util.log 'verbose', '@Spreadsheet#insertSheet'
    id = Util.getRandomString(32)
    sheet = new Sheet(id)
    @sheets[id] = {
      sheet: sheet
      id: id
    }

    # シートの名前
    loop
      @sheetCount += 1
      name = "Sheet " + @sheetCount
      break unless _(@sheetNames).has(name)

    # 名前の登録
    Util.log 'verbose', "before setname", sheet, name
    spreadsheet = @
    sheet.setName name
    @sheetNames[name] = sheet
    sheet.on 'change_name', (src, dst)->
      Util.log 'verbose', 'detect change name: ', src, dst
      spreadsheet.sheetNames = _(spreadsheet.sheetNames).omit(src)
      spreadsheet.sheetNames[dst] = sheet

    # Active sheetに設定
    @activeSheet = sheet

    return sheet

  isAnonymousView: ()->
    throw new Error 'ToImplement'

  isAnonymousWrite: ()->
    throw new Error 'ToImplement'

  isReadable: ()->
    throw new Error 'ToImplement'

  isWritable: ()->
    throw new Error 'ToImplement'

  moveActiveSheet: ()->
    throw new Error 'ToImplement'

  removeEditor: ()->
    throw new Error 'ToImplement'

  removeMenu: ()->
    throw new Error 'ToImplement'

  removeNamedRange: ()->
    throw new Error 'ToImplement'

  removeViewer: ()->
    throw new Error 'ToImplement'

  rename: (new_name)->
    Util.log 'verbose', '@Spreadsheet#rename: ', new_name
    @name = new_name

  renameActiveSheet: ()->
    throw new Error 'ToImplement'

  setActiveRange: ()->
    throw new Error 'ToImplement'

  setActiveSelection: ()->
    throw new Error 'ToImplement'

  setActiveSheet: (sheet)->
    @activeSheet = sheet

  setAnonymousAccess: ()->
    throw new Error 'ToImplement'

  setColumnWidth: ()->
    throw new Error 'ToImplement'

  setFrozenColumns: ()->
    throw new Error 'ToImplement'

  setFrozenRows: ()->
    throw new Error 'ToImplement'

  setNamedRange: ()->
    throw new Error 'ToImplement'

  setRowHeight: ()->
    throw new Error 'ToImplement'

  setSheetProtection: ()->
    throw new Error 'ToImplement'

  setSpreadsheetLocale: ()->
    throw new Error 'ToImplement'

  setSpreadsheetTimeZone: ()->
    throw new Error 'ToImplement'

  show: ()->
    throw new Error 'ToImplement'

  sort: ()->
    throw new Error 'ToImplement'

  toast: ()->
    throw new Error 'ToImplement'

  unhideColumn: ()->
    throw new Error 'ToImplement'

  unhideRow: ()->
    throw new Error 'ToImplement'

  updateMenu: ()->
    throw new Error 'ToImplement'

  @sheets: {}
  @activeSheet: null

module.exports = Spreadsheet

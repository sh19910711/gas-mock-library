Util = require './util'
Range = require './range'
Event = require './event'

class Sheet extends Event
  constructor: (id)->
    super()

    @id = id
    @data = []

    # Init data table
    for row in [0..2]
      @data[row] = []
      for col in [0..2]
        @data[row][col] = undefined

  activate: ()->
    throw new Error 'ToImplement'

  appendRow: ()->
    throw new Error 'ToImplement'

  autoResizeColumn: ()->
    throw new Error 'ToImplement'

  clear: ()->
    throw new Error 'ToImplement'

  clearContents: ()->
    throw new Error 'ToImplement'

  clearFormats: ()->
    throw new Error 'ToImplement'

  clearNotes: ()->
    throw new Error 'ToImplement'

  copyTo: ()->
    throw new Error 'ToImplement'

  deleteColumn: ()->
    throw new Error 'ToImplement'

  deleteColumns: ()->
    throw new Error 'ToImplement'

  deleteRow: ()->
    throw new Error 'ToImplement'

  deleteRows: ()->
    throw new Error 'ToImplement'

  getActiveCell: ()->
    throw new Error 'ToImplement'

  getActiveRange: ()->
    throw new Error 'ToImplement'

  getCharts: ()->
    throw new Error 'ToImplement'

  getColumnWidth: ()->
    throw new Error 'ToImplement'

  getDataRange: ()->
    throw new Error 'ToImplement'

  getFrozenColumns: ()->
    throw new Error 'ToImplement'

  getFrozenRows: ()->
    throw new Error 'ToImplement'

  getIndex: ()->
    throw new Error 'ToImplement'

  getLastColumn: ()->
    throw new Error 'ToImplement'

  getLastRow: ()->
    throw new Error 'ToImplement'

  getMaxColumns: ()->
    throw new Error 'ToImplement'

  getMaxRows: ()->
    throw new Error 'ToImplement'

  getName: ()->
    Util.log "verbose", "@Sheet#getName: ", @name
    return @name

  getParent: ()->
    throw new Error 'ToImplement'

  getRange: (params...)->
    if params.length == 1
      str = params[0]
      row_str = (str.match /^[A-Z]+/)[0]
      col_str = str.substr(row_str.length)
      row_str = Util.getAlphabetNumber row_str
      row = parseInt(row_str, 10)
      col = parseInt(col_str, 10)
    else if params.length == 2
      row = params[0]
      col = params[1]
    else
      throw new Error 'ToImplement'
    Util.log 'verbose', '@Sheet#getRange', @, row, col
    range = new Range
    range.data = [
      {
        sheet: @
        row: row
        col: col
      }
    ]
    return range

  getRowHeight: ()->
    throw new Error 'ToImplement'

  getSheetId: ()->
    throw new Error 'ToImplement'

  getSheetName: ()->
    throw new Error 'ToImplement'

  getSheetProtection: ()->
    throw new Error 'ToImplement'

  getSheetValues: ()->
    throw new Error 'ToImplement'

  hideColumn: ()->
    throw new Error 'ToImplement'

  hideColumns: ()->
    throw new Error 'ToImplement'

  hideColumns: ()->
    throw new Error 'ToImplement'

  hideRow: ()->
    throw new Error 'ToImplement'

  hideRows: ()->
    throw new Error 'ToImplement'

  hideRows: ()->
    throw new Error 'ToImplement'

  hideSheet: ()->
    throw new Error 'ToImplement'

  insertChart: ()->
    throw new Error 'ToImplement'

  insertColumnAfter: ()->
    throw new Error 'ToImplement'

  insertColumnBefore: ()->
    throw new Error 'ToImplement'

  insertColumns: ()->
    throw new Error 'ToImplement'

  insertColumns: ()->
    throw new Error 'ToImplement'

  insertColumnsAfter: ()->
    throw new Error 'ToImplement'

  insertColumnsBefore: ()->
    throw new Error 'ToImplement'

  insertImage: ()->
    throw new Error 'ToImplement'

  insertImage: ()->
    throw new Error 'ToImplement'

  insertRowAfter: ()->
    throw new Error 'ToImplement'

  insertRowBefore: ()->
    throw new Error 'ToImplement'

  insertRows: ()->
    throw new Error 'ToImplement'

  insertRows: ()->
    throw new Error 'ToImplement'

  insertRowsAfter: ()->
    throw new Error 'ToImplement'

  insertRowsBefore: ()->
    throw new Error 'ToImplement'

  isSheetHidden: ()->
    throw new Error 'ToImplement'

  newChart: ()->
    throw new Error 'ToImplement'

  removeChart: ()->
    throw new Error 'ToImplement'

  setActiveRange: ()->
    throw new Error 'ToImplement'

  setActiveSelection: ()->
    throw new Error 'ToImplement'

  setActiveSelection: ()->
    throw new Error 'ToImplement'

  setColumnWidth: ()->
    throw new Error 'ToImplement'

  setFrozenColumns: ()->
    throw new Error 'ToImplement'

  setFrozenRows: ()->
    throw new Error 'ToImplement'

  setName: (name)->
    Util.log '@Sheet#setname: name = ', name
    src = @name
    dest = name
    @name = name
    @fire('change_name', src, dest)

  setRowHeight: ()->
    throw new Error 'ToImplement'

  setSheetProtection: ()->
    throw new Error 'ToImplement'

  showColumns: ()->
    throw new Error 'ToImplement'

  showColumns: ()->
    throw new Error 'ToImplement'

  showRows: ()->
    throw new Error 'ToImplement'

  showRows: ()->
    throw new Error 'ToImplement'

  showSheet: ()->
    throw new Error 'ToImplement'

  sort: ()->
    throw new Error 'ToImplement'

  sort: ()->
    throw new Error 'ToImplement'

  unhideColumn: ()->
    throw new Error 'ToImplement'

  unhideRow: ()->
    throw new Error 'ToImplement'

  updateChart: ()->
    throw new Error 'ToImplement'

  data: []

module.exports = Sheet

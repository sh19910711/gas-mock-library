Util = require './util'
Range = require './range'
Event = require './event'

SHEET_MARGIN = 10

class Sheet extends Event
  constructor: (id)->
    super()

    @id = id
    @data = []

    @width = 0 + SHEET_MARGIN
    @height = 0 + SHEET_MARGIN

    # Init data table
    for row in [0..@height]
      @data[row] = []
      for col in [0..@width]
        @data[row][col] = undefined

  activate: ()->
    throw new Error 'ToImplement'

  appendRow: (row)->
    Util.log "verbose", "Sheet#appendRow"
    row.unshift undefined
    Util.log "verbose", "Sheet#appendRow, row = ", row
    @height += 1
    @data[@height - SHEET_MARGIN] = row
    Util.log "verbose", "Sheet#appendRow, row_id = ", (@height - SHEET_MARGIN - 1)
    return @

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

  deleteRow: (row_id)->
    Util.log "verbose", "Sheet#deleteRow"
    Util.log 'verbose', 'Sheet#deleteRow', @data[row_id], @data[row_id + 1]
    @data.splice row_id, 1
    @height -= 1
    return @

  deleteRows: ()->
    throw new Error 'ToImplement'

  getActiveCell: ()->
    Util.log "verbose", "@Sheet#getActiveCell", @activeRange
    return @activeRange

  getActiveRange: ()->
    Util.log "verbose", "@Sheet#getActiveRange", @activeRange
    return @activeRange

  getCharts: ()->
    throw new Error 'ToImplement'

  getColumnWidth: ()->
    throw new Error 'ToImplement'

  getDataRange: ()->
    Util.log 'verbose', '@Spreadsheet#getDataRange'
    range = new Range
    range.data = [
      {
        sheet: @
        row: 1
        col: 1
        width: @width - SHEET_MARGIN
        height: @height - SHEET_MARGIN
      }
    ]
    return range

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
      col_str = (str.match /^[A-Z]+/)[0]
      row_str = str.substr(col_str.length)
      col_str = Util.getAlphabetNumber col_str
      row = parseInt(row_str, 10)
      col = parseInt(col_str, 10)
    else if params.length == 2
      row = params[0]
      col = params[1]
    else
      throw new Error 'ToImplement'

    Util.log 'verbose', '@Sheet#getRange', row, col
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

  setActiveRange: (range)->
    @activeRange = range

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

  resize: (width, height) ->
    Util.log 'verbose', '@Sheet#resize', width, height
    @width = width + SHEET_MARGIN
    @height = height + SHEET_MARGIN
    # Init data table
    for row in [0..@height]
      unless @data[row] instanceof Array
        @data[row] = []
        for col in [0..@width]
          @data[row][col] = undefined

  get_data: (row, col) ->
    return @data[row][col]

  set_data: (row, col, value) ->
    Util.log 'verbose', '@set_data', row, col, value
    @data[row][col] = value

  width: 0
  height: 0
  data: []
  activeRange: null

module.exports = Sheet

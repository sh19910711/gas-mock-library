Util = require './util'

class Range
  constructor: ()->
    @data = []

  activate: ()->
    throw new Error 'ToImplement'

  breakApart: ()->
    throw new Error 'ToImplement'

  clear: ()->
    throw new Error 'ToImplement'

  clear: ()->
    throw new Error 'ToImplement'

  clearContent: ()->
    throw new Error 'ToImplement'

  clearDataValidations: ()->
    throw new Error 'ToImplement'

  clearFormat: ()->
    throw new Error 'ToImplement'

  clearNote: ()->
    throw new Error 'ToImplement'

  copyFormatToRange: ()->
    throw new Error 'ToImplement'

  copyFormatToRange: ()->
    throw new Error 'ToImplement'

  copyTo: ()->
    throw new Error 'ToImplement'

  copyTo: ()->
    throw new Error 'ToImplement'

  copyValuesToRange: ()->
    throw new Error 'ToImplement'

  copyValuesToRange: ()->
    throw new Error 'ToImplement'

  getA1Notation: ()->
    throw new Error 'ToImplement'

  getBackground: ()->
    throw new Error 'ToImplement'

  getBackgrounds: ()->
    throw new Error 'ToImplement'

  getCell: ()->
    throw new Error 'ToImplement'

  getColumn: ()->
    throw new Error 'ToImplement'

  getDataSourceUrl: ()->
    throw new Error 'ToImplement'

  getDataTable: ()->
    throw new Error 'ToImplement'

  getDataTable: ()->
    throw new Error 'ToImplement'

  getDataValidation: ()->
    throw new Error 'ToImplement'

  getDataValidations: ()->
    throw new Error 'ToImplement'

  getFontColor: ()->
    throw new Error 'ToImplement'

  getFontColors: ()->
    throw new Error 'ToImplement'

  getFontFamilies: ()->
    throw new Error 'ToImplement'

  getFontFamily: ()->
    throw new Error 'ToImplement'

  getFontLine: ()->
    throw new Error 'ToImplement'

  getFontLines: ()->
    throw new Error 'ToImplement'

  getFontSize: ()->
    throw new Error 'ToImplement'

  getFontSizes: ()->
    throw new Error 'ToImplement'

  getFontStyle: ()->
    throw new Error 'ToImplement'

  getFontStyles: ()->
    throw new Error 'ToImplement'

  getFontWeight: ()->
    throw new Error 'ToImplement'

  getFontWeights: ()->
    throw new Error 'ToImplement'

  getFormula: ()->
    throw new Error 'ToImplement'

  getFormulaR1C1: ()->
    throw new Error 'ToImplement'

  getFormulas: ()->
    throw new Error 'ToImplement'

  getFormulasR1C1: ()->
    throw new Error 'ToImplement'

  getGridId: ()->
    throw new Error 'ToImplement'

  getHeight: ()->
    throw new Error 'ToImplement'

  getHorizontalAlignment: ()->
    throw new Error 'ToImplement'

  getHorizontalAlignments: ()->
    throw new Error 'ToImplement'

  getLastColumn: ()->
    throw new Error 'ToImplement'

  getLastRow: ()->
    throw new Error 'ToImplement'

  getNote: ()->
    throw new Error 'ToImplement'

  getNotes: ()->
    throw new Error 'ToImplement'

  getNumColumns: ()->
    throw new Error 'ToImplement'

  getNumRows: ()->
    throw new Error 'ToImplement'

  getNumberFormat: ()->
    throw new Error 'ToImplement'

  getNumberFormats: ()->
    throw new Error 'ToImplement'

  getRow: ()->
    throw new Error 'ToImplement'

  getRowIndex: ()->
    throw new Error 'ToImplement'

  getSheet: ()->
    throw new Error 'ToImplement'

  getValue: ()->
    obj = @data[0]
    Util.log 'verbose', '@Range#getValue', obj.sheet.data[obj.row][obj.col]
    return obj.sheet.data[obj.row][obj.col]

  getValues: ()->
    throw new Error 'ToImplement'

  getVerticalAlignment: ()->
    throw new Error 'ToImplement'

  getVerticalAlignments: ()->
    throw new Error 'ToImplement'

  getWidth: ()->
    throw new Error 'ToImplement'

  getWrap: ()->
    throw new Error 'ToImplement'

  getWraps: ()->
    throw new Error 'ToImplement'

  isBlank: ()->
    throw new Error 'ToImplement'

  merge: ()->
    throw new Error 'ToImplement'

  mergeAcross: ()->
    throw new Error 'ToImplement'

  mergeVertically: ()->
    throw new Error 'ToImplement'

  moveTo: ()->
    throw new Error 'ToImplement'

  offset: ()->
    throw new Error 'ToImplement'

  offset: ()->
    throw new Error 'ToImplement'

  offset: ()->
    throw new Error 'ToImplement'

  setBackground: ()->
    throw new Error 'ToImplement'

  setBackgroundRGB: ()->
    throw new Error 'ToImplement'

  setBackgrounds: ()->
    throw new Error 'ToImplement'

  setBorder: ()->
    throw new Error 'ToImplement'

  setDataValidation: ()->
    throw new Error 'ToImplement'

  setDataValidations: ()->
    throw new Error 'ToImplement'

  setFontColor: ()->
    throw new Error 'ToImplement'

  setFontColors: ()->
    throw new Error 'ToImplement'

  setFontFamilies: ()->
    throw new Error 'ToImplement'

  setFontFamily: ()->
    throw new Error 'ToImplement'

  setFontLine: ()->
    throw new Error 'ToImplement'

  setFontLines: ()->
    throw new Error 'ToImplement'

  setFontSize: ()->
    throw new Error 'ToImplement'

  setFontSizes: ()->
    throw new Error 'ToImplement'

  setFontStyle: ()->
    throw new Error 'ToImplement'

  setFontStyles: ()->
    throw new Error 'ToImplement'

  setFontWeight: ()->
    throw new Error 'ToImplement'

  setFontWeights: ()->
    throw new Error 'ToImplement'

  setFormula: ()->
    throw new Error 'ToImplement'

  setFormulaR1C1: ()->
    throw new Error 'ToImplement'

  setFormulas: ()->
    throw new Error 'ToImplement'

  setFormulasR1C1: ()->
    throw new Error 'ToImplement'

  setHorizontalAlignment: ()->
    throw new Error 'ToImplement'

  setHorizontalAlignments: ()->
    throw new Error 'ToImplement'

  setNote: ()->
    throw new Error 'ToImplement'

  setNotes: ()->
    throw new Error 'ToImplement'

  setNumberFormat: ()->
    throw new Error 'ToImplement'

  setNumberFormats: ()->
    throw new Error 'ToImplement'

  setValue: (new_value)->
    Util.log 'verbose', '@Range#setValue', new_value
    obj = @data[0]
    obj.sheet.data[obj.row][obj.col] = new_value

  setValues: ()->
    throw new Error 'ToImplement'

  setVerticalAlignment: ()->
    throw new Error 'ToImplement'

  setVerticalAlignments: ()->
    throw new Error 'ToImplement'

  setWrap: ()->
    throw new Error 'ToImplement'

  setWraps: ()->
    throw new Error 'ToImplement'

  sort: ()->
    throw new Error 'ToImplement'

  data: []

module.exports = Range

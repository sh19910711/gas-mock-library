module.exports = {
  before: function() {
    var SpreadsheetApp = require('../../source/spreadsheet_app');
    global.SpreadsheetApp = new SpreadsheetApp;
  }
};

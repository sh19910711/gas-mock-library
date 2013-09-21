module.exports = {
  before: function() {
    var SpreadsheetApp = require('../../source').SpreadsheetApp;
    global.SpreadsheetApp = new SpreadsheetApp;

    var Util = require('../../source').Util;
    Util.log_visible["verbose"] = true;
  }
};

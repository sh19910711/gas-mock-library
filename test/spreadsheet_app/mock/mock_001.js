// $B?7$7$/%9%W%l%C%I%7!<%H$r:n@.$7$F!"%G!<%?$r@_Dj$7(B
// $B:n@.$7$?%7!<%H$r3+$$$F%G!<%?$r<hF@$9$k(B
function test_001() {
  var spreadsheet = SpreadsheetApp.create("test");
  var sheet_name = "test-sheet-01";
  var new_sheet = spreadsheet.insertSheet();
  new_sheet.setName(sheet_name);
  new_sheet.getRange(1, 1).setValue(999);
  var sheet = spreadsheet.getSheetByName(sheet_name);
  return sheet.getRange(1, 1).getValue();
}

module.exports = {
  test_001: test_001
};

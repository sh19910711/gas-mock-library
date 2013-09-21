module.exports = {
  // 新しくスプレッドシートを作成して、データを設定し
  // 作成したシートを開いてデータを取得する
  test_001: function() {
    var spreadsheet = SpreadsheetApp.create("test");
    var sheet_name = "test-sheet-01";
    var new_sheet = spreadsheet.insertSheet();
    new_sheet.setName(sheet_name);
    new_sheet.getRange(1, 1).setValue(999);
    var sheet = spreadsheet.getSheetByName(sheet_name);
    return sheet.getRange(1, 1).getValue();
  },
  // スプレッドシートを作成してID指定で開き直す
  test_002: function() {
    var spreadsheet = SpreadsheetApp.create("test");
    var id = spreadsheet.getId();
    var sp = SpreadsheetApp.openById(id);
    return sp.getName();
  }
};

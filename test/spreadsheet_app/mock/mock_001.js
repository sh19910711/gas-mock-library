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
  },
  // A1表記
  test_003: function() {
    var spreadsheet = SpreadsheetApp.create("test");
    var new_sheet = spreadsheet.insertSheet();
    new_sheet.getRange("B2").setValue("test");
    var value = new_sheet.getRange(2, 2).getValue();
    Logger.log(value);
    return value;
  },
  // Active系
  test_004: function test_004() {
    var sp_new = SpreadsheetApp.create("テスト");
    SpreadsheetApp.setActiveSpreadsheet(sp_new);
    var new_sheet = sp_new.insertSheet();
    new_sheet.setName("test_sheet");
    var sheet = sp_new.getSheetByName("test_sheet");
    sheet.getRange("B2").setValue("てすと");
    sheet.setActiveRange(sheet.getRange("B2"));
    var value = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet().getActiveCell().getValue();
    return value;
  }
};

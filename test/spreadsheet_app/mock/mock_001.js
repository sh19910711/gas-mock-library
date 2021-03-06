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
  },
  // row.1
  test_005_001: function() {
    var sp = SpreadsheetApp.create("test");
    sp.appendRow(["test1"]);
    sp.appendRow(["test2"]);
    sp.appendRow(["test3"]);
    sp.deleteRow(2);
    var value = sp.getSheets()[0].getRange(2, 1).getValue();
    return value;
  },
  // row.2
  test_005_002: function test_005_002() {
    var sp = SpreadsheetApp.create("test");
    var s = sp.getSheets()[0];
    s.getRange("A150").setValue("test-1");
    s.appendRow(["test-2"]);
    var v = {
      0: s.getRange(150, 1).getValue(),
      1: s.getRange(151, 1).getValue()
    };
    return v;
  },
  // sheet size
  test_006: function test_006() {
    var sp = SpreadsheetApp.create("test");
    sp.insertSheet("test");
    var sheet = sp.getSheetByName("test");
    sheet.getRange(20, 10).setValue("hello");
    var w = sp.getDataRange().getWidth();
    var h = sp.getDataRange().getHeight();
    var value = { width: w, height: h };
    return value;
  },
  // sheet size
  test_007: function test_007() {
    var sp = SpreadsheetApp.create("test");
    var sheet = sp.insertSheet("test");
    sheet.getRange(20, 10).setValue("hello");
    sheet.deleteColumns(5, 5);
    sheet.deleteRows(5, 3);
    var w = sp.getDataRange().getWidth();
    var h = sp.getDataRange().getHeight();
    var value = {width: w, height: h};
    return value;
  },
  // delete sheet
  test_008_001: function() {
    var sp = SpreadsheetApp.create("test");
    var sheet = sp.insertSheet("test-sheet");
    sp.deleteSheet(sheet);
    var sheet2 = sp.getSheetByName("test-sheet");
    return sheet2;
  },
  // delete sheet.2
  test_008_002: function() {
    var sp = SpreadsheetApp.create("test");
    var sheet = sp.insertSheet("test-sheet");
    sp.deleteSheet(sheet);
    var v = sp.getSheets().length;
    return v;
  }
};

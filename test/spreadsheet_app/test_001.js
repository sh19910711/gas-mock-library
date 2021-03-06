var common = require('./common');
var mock = require('./mock/mock_001');

describe('T001: SpreadsheetApp', function() {
  before(common.before);
  it('T001_001: #create', function t_001_001() {
    mock.test_001().should.be.equal(999);
  });
  it('T001_002: #create', function t_001_002() {
    mock.test_002().should.be.equal("test");
  });
  it('T001_003: #create', function t_001_003() {
    mock.test_003().should.be.equal("test");
  });
  it('T001_004: #create', function t_001_004() {
    mock.test_004().should.be.equal("てすと");
  });
  describe('T001_005: rows', function() {
    it('T001_005_001: #create', function t_001_005_001() {
      mock.test_005_001().should.be.equal("test3");
    });
    it('T001_005_002: #create', function t_001_005_001() {
      var ret = mock.test_005_002();
      ret[0].should.be.equal("test-1");
      ret[1].should.be.equal("test-2");
    });
  });
  it('T001_006: #create', function t_001_006() {
    var ret = mock.test_006();
    ret.width.should.be.equal(10);
    ret.height.should.be.equal(20);
  });
  it('T001_007: #create', function t_001_007() {
    var ret = mock.test_007();
    ret.width.should.be.equal(5);
    ret.height.should.be.equal(17);
  });
  describe('T001_008: delete sheet', function t_001_008() {
    it('T001_008_001: #create', function t_001_008_001() {
      (mock.test_008_001() === null).should.be.equal(true);
    });
    it('T001_008_002: #create', function t_001_008_002() {
      mock.test_008_002().should.be.equal(1);
    });
  });
});

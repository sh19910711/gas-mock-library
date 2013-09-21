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
  it('T001_005: #create', function t_001_005() {
    mock.test_005().should.be.equal("test3");
  });
});

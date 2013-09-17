var common = require('./common');
var mock = require('./mock/mock_001');

describe('T001: SpreadsheetApp', function() {
  before(common.before);
  it('T001_001: #create', function t_001_001() {
    mock.test_001().should.be.equal(999);
  });
});

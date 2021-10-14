require "test_helper"

class OrgTest < ActiveSupport::TestCase
  test 'should not save without name' do
    employee_status = Org.new
    assert_not employee_status.save
  end

  test 'should not save without code' do
    employee_status = Org.new(name: 'Test Status')
    assert_not employee_status.save
  end

  test 'should save valid org' do
    employee_status = Org.new(name: 'Test Org', code: 1)
    assert employee_status.save
  end
end

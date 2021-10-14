require 'test_helper'

class EmployeeStatusTest < ActiveSupport::TestCase
  test 'should not save without name' do
    employee_status = EmployeeStatus.new
    assert_not employee_status.save
  end

  test 'should not save without code' do
    employee_status = EmployeeStatus.new(name: 'Test Status')
    assert_not employee_status.save
  end

  test 'should save valid status' do
    employee_status = EmployeeStatus.new(name: 'Test Status', code: 1)
    assert employee_status.save
  end
end

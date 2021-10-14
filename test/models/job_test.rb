require "test_helper"

class JobTest < ActiveSupport::TestCase
  test 'should not save without name' do
    employee_status = Job.new
    assert_not employee_status.save
  end

  test 'should not save without code' do
    employee_status = Job.new(name: 'Test Status')
    assert_not employee_status.save
  end

  test 'should save valid job' do
    employee_status = Job.new(name: 'Test Job', code: 1)
    assert employee_status.save
  end
end

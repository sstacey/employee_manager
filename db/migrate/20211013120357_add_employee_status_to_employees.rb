class AddEmployeeStatusToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :employee_status_id, :string
  end
end

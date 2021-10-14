class ChangeEmployeeStatusIdToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :employees, :employee_status_id, :integer
  end
end

class ChangeEmployeeStatusIdToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :employees, :employee_status_id, 'integer USING CAST(employee_status_id AS integer)'
  end
end

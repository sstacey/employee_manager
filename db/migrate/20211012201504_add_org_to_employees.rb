class AddOrgToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :org_id, :integer
  end
end

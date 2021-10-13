class AddCodeToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :code, :integer
  end
end

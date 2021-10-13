class CreateEmployeeStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_statuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end

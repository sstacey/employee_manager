class AddJobIdToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :job_id, :integer
  end
end

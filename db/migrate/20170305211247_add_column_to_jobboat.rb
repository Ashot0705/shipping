class AddColumnToJobboat < ActiveRecord::Migration[5.0]
  def change
  	add_column :jobboats, :job_id, :integer
  	add_column :jobboats, :boat_id, :integer
  end
end

class CreateJobboats < ActiveRecord::Migration[5.0]
  def change
    create_table :jobboats do |t|

      t.timestamps
    end
  end
end

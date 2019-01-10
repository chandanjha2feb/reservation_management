class CreateWorkingHours < ActiveRecord::Migration[5.2]
  def change
    create_table :working_hours do |t|
      t.integer :open_time
      t.integer :close_time
      t.string :shift_type
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

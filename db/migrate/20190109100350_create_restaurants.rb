class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :shift_time
      t.string :name
      t.string :phone_num
      t.string :email

      t.timestamps
    end
  end
end

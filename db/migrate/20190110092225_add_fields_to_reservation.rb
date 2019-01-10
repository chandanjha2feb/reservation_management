class AddFieldsToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :table_name, :string
    add_column :reservations, :seat, :integer
    add_column :reservations, :guest_count, :string
  end
end

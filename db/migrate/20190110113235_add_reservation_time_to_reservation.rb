class AddReservationTimeToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reservation_time, :string
  end
end

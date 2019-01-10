class Reservation < ApplicationRecord
  belongs_to :guest
  belongs_to :restaurant

  validates_presence of :guest_id, :restaurant_id
end

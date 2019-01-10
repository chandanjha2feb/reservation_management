class Guest < ApplicationRecord
  has_many :reservations
  has_many :restaurants, through: :reservations

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /^(\+?6?01)[0|1|2|3|4|6|7|8|9]\-*[0-9]{7,8}$/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :name, presence: true


    # validates :phone_num, format: { with: VALID_EMAIL_REGEX }

end

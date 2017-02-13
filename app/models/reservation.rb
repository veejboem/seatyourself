class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :time, :date, :party_size, :restaurant_id, :name, :email, presence: true
end

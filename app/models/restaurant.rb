class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, :capacity, :description, :location, :category, presence: true

  validates :name, uniqueness: true

end

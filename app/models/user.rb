class User < ApplicationRecord
  has_many :reservations
  has_many :restaurants, through: :reservations


  validates :name, :email, presence: true

  validates :email, uniqueness: true


end

class User < ApplicationRecord
  # Assosications
  hhas_many :bookings
  has_many :hotels, through: :bookings
  # Validations
  validates :name, :phone, :email, presence: true
  # Methods
end

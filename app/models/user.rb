class User < ApplicationRecord
  # Assosications
  # Validations
  validates :name, :phone, :email, presence: true
  # Methods
end

class Hotel < ApplicationRecord
  # Assosications
  # Validations
  validates :name, :location, :description, :photo, presence: true
  validates :price, numericality: { only_float: true, greater_than: 0 }
  validates :rating, numericality: { only_integer: true, greater_than: 0 }
  # Methods
end

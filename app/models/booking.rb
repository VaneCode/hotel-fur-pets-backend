class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :hotel
  # Validations
  validates :checking_in, :checking_out, :animal_name, :animal_type, presence: true
  # Methods
end

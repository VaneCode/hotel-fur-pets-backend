class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, :timeoutable, jwt_revocation_strategy: self

  has_many :bookings
  has_many :hotels, through: :bookings

  validates :name, presence: true, length: { maximum: 30 }
  validates :phone, :email, :password, presence: true

  def admin?
    role == 'admin'
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  # :recoverable, :rememberable, :validatable
  # Update user model to use JWT token
  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  # Assosiations
  has_many :bookings
  has_many :hotels, through: :bookings
  # Validations
  validates :name, :phone, :email, presence: true
  # Methods
  def admin?
    role == 'admin'
  end
end

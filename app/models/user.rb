class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
    has_many :bookings
    has_many :books, through: :bookings
    validates :name, :last_name, presence: true
end

class Book < ApplicationRecord
    has_many :bookings
    has_many :users, through: :bookings
    validates :name, :author, presence: true
end

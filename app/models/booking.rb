class Booking < ApplicationRecord
    belongs_to :book
    belongs_to :user
    validates :start_date, :end_date, presence: true
    validate :date_validation

    private
    def date_validation
        return if end_date.blank? || start_date.blank?

        if end_date < start_date
            errors.add(:end_date, notice: "Debe ser posterior a la fecha de inicio") 
        end
    end
end

class Booking < ApplicationRecord
    belongs_to :book
    belongs_to :user
    validates :start_date, :end_date, presence: true
    validate :date_validation, :book_not_available

    private
    def date_validation
        return if end_date.blank? || start_date.blank?

        if end_date < start_date
            errors.add(:end_date, "Debe ser posterior a la fecha de inicio") 
        end
    end

    def book_not_available
        return if start_date.blank? || end_date.blank?

        overlap = Booking.where(book_id: book_id)
                        .where.not(id: id)
                        .where("start_date <= ? AND end_date >= ?", end_date, start_date)

        if overlap.exists?
            booking = overlap.first
            errors.add(:base , "Ya está reservado desde #{booking.start_date.strftime("%d/%m/%Y")} hasta #{booking.end_date.strftime("%d/%m/%Y")}")
        end
    end
end

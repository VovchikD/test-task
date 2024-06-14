class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :music_record

  validates :user_id, :music_record_id, :start_date, :end_date, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  private

  def validate_rental_duration
    if end_date - start_date.to_i != 3.months
      cancel_rental
      errors.add(:end_date, "Rental period must be exactly 3 months")
    end
  end

  def cancel_rental
    update_attribute(:end_date, Date.today)
  end
end

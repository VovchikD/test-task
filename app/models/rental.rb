class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :music_record

  validates :user_id, :music_record_id, :start_date, :end_date, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end

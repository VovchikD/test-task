class Order < ApplicationRecord
  belongs_to :user
  belongs_to :music_record

  validates :user_id, :music_record_id, :start_date, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end

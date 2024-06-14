class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :music_record
end

# frozen_string_literal: true

class CreateMusicRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :music_records do |t|
      t.string :title
      t.string :photo
      t.float :price
      t.text :description
      t.string :damage_assessment
      t.boolean :rented
      t.date :rented_at
      t.date :rental_end

      t.timestamps
    end
  end
end

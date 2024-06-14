class CreateRentals < ActiveRecord::Migration[7.1]
  def change
    create_table :rentals do |t|
      t.references :user, foreign_key: true
      t.references :music_record, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :damage_assessment
      t.float :price, null: false
      t.string :note

      t.timestamps
    end
  end
end

class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.references :user, null: false, foreign_key: true
      t.references :music_record, null: false, foreign_key: true
      t.float :price
      t.date :sale_date

      t.timestamps
    end
  end
end

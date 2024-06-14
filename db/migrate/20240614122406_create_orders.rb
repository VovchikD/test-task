class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :music_record, foreign_key: true
      t.date :start_date, null: false

      t.timestamps
    end
  end
end

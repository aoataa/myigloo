class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :igloo, null: false, foreign_key: true
      t.date :check_in
      t.date :chek_out

      t.timestamps
    end
  end
end

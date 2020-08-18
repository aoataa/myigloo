class RenameCheckOutToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :check_out, :date
  end
end

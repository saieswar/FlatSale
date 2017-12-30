class CreateFlatBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :flat_bookings do |t|
      t.decimal :agreement_amount
      t.datetime :date_of_booking
      t.decimal :base_price
      t.float :area
      t.timestamps
    end
  end
end

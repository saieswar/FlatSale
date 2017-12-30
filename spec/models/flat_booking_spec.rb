require 'rails_helper'

RSpec.describe FlatBooking, type: :model do

	context "validations for FlatBooking" do 
  
  it "has a valid factory" do
    expect(FactoryGirl.build(:falt_booking1).save).should be_truthy
  end

  it " area cannot be blank" do
     flat_booking = FlatBooking.new(area: nil, agreement_amount: 122, date_of_booking: Date.today, base_price: 123)
     flat_booking.save
     expect(flat_booking.errors.full_messages.include?("area can't be blank")).should be_truthy
  end

  it "agreement_amount cannot be blank" do
    flat_booking = FlatBooking.new(area: 43.8, agreement_amount: nil, date_of_booking: Date.today, base_price: 123)
     flat_booking.save
     expect(flat_booking.errors.full_messages.include?("agreement_amount can't be blank")).should be_truthy
  end

  it "date_of_booking cannot be blank" do
    flat_booking = FlatBooking.new(area: 43.8, agreement_amount: 123, date_of_booking: nil, base_price: 123)
     flat_booking.save
     expect(flat_booking.errors.full_messages.include?("date_of_booking can't be blank")).should be_truthy
  end

  it "base_price" do
    flat_booking = FlatBooking.new(area: 43.8, agreement_amount: 123, date_of_booking: nil, base_price: nil)
     flat_booking.save
     expect(flat_booking.errors.full_messages.include?("base_price can't be blank")).should be_truthy
  end
  
  end

end

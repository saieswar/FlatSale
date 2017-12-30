FactoryGirl.define do
	factory :falt_booking1, :class => FlatBooking do 
		agreement_amount 1234 
		date_of_booking Date.today
	  base_price 14636
	  area 54.7
	end
	factory :falt_booking2, :class => FlatBooking do 
		agreement_amount 1234 
		date_of_booking "11-08-2016".to_date
	  base_price 14636
	  area nil
	end

	factory :falt_booking3, :class => FlatBooking do 
		agreement_amount 1234 
		date_of_booking "12-09-2017".to_date
	  base_price 14636
	  area 54.7
	end
end
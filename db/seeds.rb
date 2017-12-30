# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#FlatBooking.delete_all
FlatBooking.create([{agreement_amount: 1234, date_of_booking: Date.today, base_price: 14636, area: 54.7},
	{agreement_amount: 12134, date_of_booking: Date.today, base_price: 14636, area: 54.7},
	{agreement_amount: 1234, date_of_booking: "11-11-2017".to_date, base_price: 14642, area: 54.7},
	{agreement_amount: 1234, date_of_booking: "1-4-2016".to_date, base_price: 14636, area: 54.7},
	{agreement_amount: 1234, date_of_booking: "4-2-2015".to_date, base_price: 14636, area: 54.7},
	{agreement_amount: 1234, date_of_booking: "22-12-2015".to_date, base_price: 14636, area: 54.7},
	{agreement_amount: 1234, date_of_booking: "13-7-2016".to_date, base_price: 14636, area: 54.7}])


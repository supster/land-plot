FactoryGirl.define do
	factory :map do
		name "Villa Nara"
	end

	factory :status do
		name "Available"
	end

	factory :phase do
		name "A"
	end

	factory :plot do
		code 		"A1"
		home_type 	"V1"
		size		120.50
		row			1
		col 		1
		group_id 	1
		price		100000
		base_price	100
		extra_land_price 100
		house_add_on_price	100
		plot_add_on_price 100
		deed_no		"1234"
		comments	"abcde"
		map
		status
		phase
	end


end
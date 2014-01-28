FactoryGirl.define do
	factory :map do
		name "Villa Nara"
	end

	factory :status do
		name "Available"
	end

	factory :plot do
		code 		"A1"
		home_type 	"V1"
		size		120.50
		row			1
		col 		1
		group_id 	1
		price		100000
		map
		status
	end


end
FactoryGirl.define do
	factory :map do
		id   1
		name "Villa Nara"
	end

	factory :status do
		name "Available"
	end

	factory :tf_status, class: Status do
		name "Transferred"
	end

	factory :cs_status, class: Status do
		name "Contract Signed"
	end

	factory :phase do
		name "A"
	end

	factory :contractor do
		name "Lan"
	end

	factory :foreman do
		name "James"
	end

	factory :plot do
		sequence(:code) 	{ |n| "A#{n}" }
		home_type 			"V1"
		size				120.50
		row					1
		col 				1
		group_id 			1
		base_price			100
		extra_land_price 	100
		house_add_on_price	100
		plot_add_on_price 	100
		deed_no				"1234"
		comments			"abcde"

		before(:create) do |plot|
			plot.map = Map.find_by_name("Villa Nara") 	|| create(:map)		
			plot.phase = Phase.find_by_name("A") || create(:phase)
			plot.status = Status.find_by_name("Available") || create(:status)
			plot.contractor = Contractor.find_by_name("Lan") || create(:contractor)
			plot.foreman = Foreman.find_by_name("James") || create(:foreman)
		end

		factory :tf_plot do
			before(:create) do |plot|
				plot.status = Status.find_by_name("Transferred") || create(:tf_status)
			end
		end
	end

  factory :user do
    email 	 "superspt@gmail.com"
    admin 	 false
    password "test12345"
    #remember_token ""
    #password_digest ""
  end

	
end
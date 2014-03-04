require 'spec_helper'

feature "User Login" do

	let(:user) { FactoryGirl.create(:user) }

	before {
		FactoryGirl.create(:map)	#have to have a map, otherwise no display
		visit root_path
	}
	it { expect(page).to have_content("Welcome to Land Plot Management") }

	scenario "with valid Information" do
		fill_in "Email", with: user.email
		fill_in "Password", with: user.password

		#save_and_open_page
		click_button "Sign In"


		expect(page).to have_content("Real Estate Development Land Map")
	end
end
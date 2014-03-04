require 'spec_helper'
require_relative 'session_helpers'

feature "Map Page" do
	include Features::SessionHelpers

	scenario "without sign in" do
		map = FactoryGirl.create(:map)
		sign_out
		visit map_path(map)
		expect(page).to have_content "Please sign in to continue."
	end

	scenario "with valid sign in" do
		map = FactoryGirl.create(:map)
		sign_in
		expect(page).to have_selector 'h2', 'Real Estate Development Land Map'
	end
end
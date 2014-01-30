require 'spec_helper'

feature 'Report pages' do
	scenario 'User visit summary page' do
		visit summary_path
		expect(page).to have_content('Summary Report')
	end
end
require 'spec_helper'

feature 'User visit report page' do
	scenario 'should see summary' do
		visit summary_path
		expect(page).to have_content('Summary Report')

	end
end
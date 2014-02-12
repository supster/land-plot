require 'spec_helper'

feature 'User visit report page' do
	scenario 'should see summary' do

		FactoryGirl.create_list :plot, 2
		FactoryGirl.create_list :tf_plot, 3

		visit summary_path
		expect(page).to have_content('Summary Report')
		expect(page).to have_content('Phase')

		#this is report heading
		@status = Status.all
		@status.each do |st|
			expect(page).to have_content(st.name)			
		end

		#this is report column
		@phase = Phase.all
		@phase.each do |ph|
			expect(page).to have_content(ph.name)			
		end
		
		expect(page).to have_content('2')
		expect(page).to have_content('3')
	end
end
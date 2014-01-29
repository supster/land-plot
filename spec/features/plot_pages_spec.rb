require 'spec_helper'

feature 'User edit plot' do

	let(:plot) { FactoryGirl.create(:plot) }
	before {
		visit edit_plot_path(plot)
	}

	#it { expect(page).to have_field('plot_code',  type: 'text') }
	it { expect(page).to have_field('plot_status_id', type: 'select') }
	it { expect(page).to have_field('plot_home_type', type: 'text') }
	it { expect(page).to have_field('plot_size', type: 'text') }
	it { expect(page).to have_field('plot_price', type: 'text') }
	it { expect(page).to have_button('Save') }	

	scenario 'with invalid price' do
		fill_in 'plot_price', with: 'abcd'
		click_button 'Save'

		expect(page).to have_content('error')
	end
	
end
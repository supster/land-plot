require 'spec_helper'

feature 'User edits a plot' do

	let(:plot) { FactoryGirl.create(:plot) }
	before {
		visit edit_plot_path(plot)
	}

	it { expect(page).to have_content(plot.code) }

	it { expect(page).to have_field('plot_status_id', type: 'select') }
	it { expect(page).to have_field('plot_phase_id', type: 'select') }
	it { expect(page).to have_field('plot_home_type', type: 'text') }
	it { expect(page).to have_field('plot_size', type: 'text') }
	
	it { expect(page).to have_field('plot_base_price', type: 'text') }
	it { expect(page).to have_field('plot_extra_land_price', type: 'text') }
	it { expect(page).to have_field('plot_house_add_on_price', type: 'text') }
	it { expect(page).to have_field('plot_plot_add_on_price', type: 'text') }
	it { expect(page).to have_field('plot_common_charge', type: 'text') }

	it { expect(page).to have_field('plot_contractor_pay_no', type: 'text') }
	it { expect(page).to have_field('plot_transfer_date', type: 'text') }
	it { expect(page).to have_field('plot_transfer_fee', type: 'text') }
	it { expect(page).to have_field('plot_tax_price', type: 'text') }
	it { expect(page).to have_field('plot_appr_price', type: 'text') }
	it { expect(page).to have_field('plot_personal_tax', type: 'text') }
	it { expect(page).to have_field('plot_special_tax', type: 'text') }
	it { expect(page).to have_field('plot_local_tax', type: 'text') }
	it { expect(page).to have_field('plot_other_fee', type: 'text') }


	it { expect(page).to have_field('plot_contractor_id', type: 'select') }
	it { expect(page).to have_field('plot_foreman_id', type: 'select') }
	it { expect(page).to have_button('Save') }	


	scenario 'with valid information' do
		select	'Available', from: 'plot_status_id'
		select	'A', from: 'plot_phase_id'
		fill_in	'plot_home_type', with: 'V1'
		fill_in	'plot_size', with: '100'
		fill_in	'plot_base_price', with: 4000
		fill_in	'plot_extra_land_price', with: 0
		fill_in	'plot_house_add_on_price', with: 0
		fill_in	'plot_plot_add_on_price', with: 500
		fill_in	'plot_contractor_pay_no', with: 5
		fill_in	'plot_transfer_date', with: '2/14/2014'
		fill_in	'plot_transfer_fee', with: 100

		select 	'Lan', from: 'plot_contractor_id'
		select	'James', from: 'plot_foreman_id'

		fill_in	'plot_buyer_name', with: "Supatra"
		fill_in	'plot_buyer_phone', with: "45003"

		click_button 'Save'

		expect(page).to have_content('Successful')
	end

	scenario 'with invalid information' do
		fill_in 'plot_base_price', with: 'abcd'
		click_button 'Save'

		expect(page).to have_content('error')
	end

end
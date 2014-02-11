require 'spec_helper'

describe "show" do
	let(:map) { FactoryGirl.create(:map) }
	let(:plot) { FactoryGirl.create(:plot) }
	
	before {
		visit map_path(map)
	}

	it { expect(page).to have_selector 'h2', 'Real Estate Development Land Map' }

end
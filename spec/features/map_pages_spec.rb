require 'spec_helper'

describe "show" do
	let(:map) { FactoryGirl.create(:map) }
	let(:plot) { FactoryGirl.create(:plot) }
	
	before {
		visit map_path(map)
	}

	it { expect(page).to have_css("div") }

	#it { should have_link() }

end
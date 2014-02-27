require 'spec_helper'

describe Map do
	let(:map) { FactoryGirl.create(:map) }

	it { should respond_to(:name) }

	it { expect(map).to be_valid }

	describe "#name" do
		context "when not present" do
			before { map.name = "" }
			it { should_not be_valid }
		end

		context "when too long" do
			before { map.name = "a" * 51 }
			it { should_not be_valid }
		end
	end

	describe "#plot" do
		context "add a plot" do	
			let(:plot) { FactoryGirl.create(:plot) }	
			let(:map)  { Map.find(plot.map_id) }

			it { expect(map).to have_at_least(1).plots }
		end
	end

end

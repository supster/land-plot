require 'spec_helper'

describe Plot do

	let(:map) { FactoryGirl.create(:map) }

	before {
		@plot = map.plots.build(code: "P1", home_type: "", size: 120.72,
														 row: 0, col: 0, group_id: 0)
	}
	subject { @plot }

	it { should respond_to(:code) }
	it { should respond_to(:row) }
	it { should respond_to(:col) }
	it { should respond_to(:group_id) }	
	it { should respond_to(:price) }

	it 	{ should be_valid }	

	context "when code is not present" do
		before { @plot.code = "" }
		it { should_not be_valid } 
	end

	context "when code is longer than 20" do
		before { @plot.code = "a" * 21 }
		it { should_not be_valid }
	end

	context "when code is shorter than 2" do
		before { @plot.code = "a" }
		it { should_not be_valid }
	end

end
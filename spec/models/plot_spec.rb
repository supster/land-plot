require 'spec_helper'

describe Plot do

	#let(:map) { FactoryGirl.create(:map) }

	#before {
	#	@plot = map.plots.build(code: "P1", home_type: "", size: 120.72,
	#							row: 0, col: 0, group_id: 0, status_id: 1)
	#}
	#subject { @plot }

	let(:plot) { FactoryGirl.create(:plot) }
	subject { plot }

	it { should respond_to(:code) }
	it { should respond_to(:row) } 
	it { should respond_to(:col) }
	it { should respond_to(:group_id) }	
	it { should respond_to(:price)  }
	it { should respond_to(:status_id) }
	it { should respond_to(:status) }
	it { should respond_to(:status_name) }
	it { should respond_to(:deed_no) }
	it { should respond_to(:comments) }

	it { should be_valid }	

	describe "attributes" do
		context "when code is not present" do
			before { plot.code = "" }
			it { should_not be_valid } 
		end

		context "when code is longer than 20" do
			before { plot.code = "a" * 21 }
			it { should_not be_valid }
		end

		context "when code is shorter than 2" do
			before { plot.code = "a" }
			it { should_not be_valid }
		end

		context "when status id is not present" do
			before	 { plot.status_id = nil }
			it { should_not be_valid }
		end

		context "when size is not a number" do
			before { plot.size = "abc" }
			it { should_not be_valid }
		end

		context "when price is not a number" do
			before { plot.price = "def" }
			it { should_not be_valid }
		end
	end

	describe "associations" do
		
	end
end
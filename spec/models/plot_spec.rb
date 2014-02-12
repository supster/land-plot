require 'spec_helper'

describe Plot do

	#let(:map) { FactoryGirl.create(:map) }

	#before {
	#	@plot = map.plots.build(code: "P1", home_type: "", size: 120.72,
	#							row: 0, col: 0, group_id: 0, status_id: 1)
	#}
	#subject { @plot }

	let(:plot) { FactoryGirl.create :plot }
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
	it { should respond_to(:base_price) }
	it { should respond_to(:extra_land_price) }
	it { should respond_to(:house_add_on_price) }
	it { should respond_to(:plot_add_on_price) }
	it { should respond_to(:phase_id) }
	it { should respond_to(:contractor_pay_no) }
	it { should respond_to(:transfer_date) }


	it { should be_valid }	

	describe "#code" do
		context "when not present" do
			before { plot.code = "" }
			it { expect(plot).not_to be_valid } 
		end

		context "when longer than 20" do
			before { plot.code = "a" * 21 }
			it { expect(plot).not_to be_valid }
		end

		context "when shorter than 2" do
			before { plot.code = "a" }
			it { expect(plot).not_to be_valid }
		end

		context "when not unique" do
			before {
				@dup_plot = plot.dup
				@dup_plot.code = plot.code
				@dup_plot.save
			}
			
			it { expect(@dup_plot).not_to be_valid }
		end
	end

	describe "#status_id" do

		context "when not present" do
			before	 { plot.status_id = nil }
			it { expect(plot).not_to be_valid }
		end

		context "should have a corrensponding status" do
			let(:status) { Status.find plot.status_id }

			it {expect(plot.status_id).to  eq(status.id) }
		end
	end

	context "when size is not a number" do
		before { plot.size = "abc" }
		it { expect(plot).not_to be_valid }
	end

	context "when price is not a number" do
		before { plot.price = "def" }
		it { expect(plot).not_to be_valid }
	end

	context "when base price is not a number" do
		before { plot.base_price = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when extra land price is not a number" do
		before { plot.extra_land_price = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when base house add on price is not a number" do
		before { plot.house_add_on_price = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when plot add on price is not a number" do
		before { plot.plot_add_on_price = "def" }
		it { expect(plot).not_to be_valid }			
	end

	describe "#transfer_date" do
		context "when status is not transferred" do
			let(:cs_status) { FactoryGirl.create(:cs_status) }
			before { 
				plot.transfer_date = '1/1/2013'
				plot.status_id = cs_status.id
				plot.save
			}

			it { expect(plot.transfer_date).to be_nil }

		end 
	end
end
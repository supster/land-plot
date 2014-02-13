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
	it { should respond_to(:status_id) }
	it { should respond_to(:status) }
	it { should respond_to(:status_name) }
	it { should respond_to(:deed_no) }
	it { should respond_to(:comments) }
	it { should respond_to(:base_price) }
	it { should respond_to(:extra_land_price) }
	it { should respond_to(:house_add_on_price) }
	it { should respond_to(:plot_add_on_price) }
	it { should respond_to(:common_charge) }

	it { should respond_to(:phase_id) }
	it { should respond_to(:contractor_pay_no) }
	it { should respond_to(:transfer_date) }
	it { should respond_to(:contractor_id) }
	it { should respond_to(:foreman_id) }

	it { should respond_to(:tax_price) }
	it { should respond_to(:appr_price) }
	it { should respond_to(:personal_tax) }
	it { should respond_to(:special_tax) }
	it { should respond_to(:local_tax) }
	it { should respond_to(:other_fee) }


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

	describe "#status" do

		it {expect(plot.status).to  be_valid }

		context "when not present" do
			before	 { plot.status_id = nil }
			it { expect(plot).not_to be_valid }
		end
	end

	context "when size is not a number" do
		before { plot.size = "abc" }
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


	context "when plot common charge is not a number" do
		before { plot.common_charge = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when transfer fee is not a number" do
		before { plot.transfer_fee = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when tax price is not a number" do
		before { plot.tax_price = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when appr price is not a number" do
		before { plot.appr_price = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when personal tax is not a number" do
		before { plot.personal_tax = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when special tax is not a number" do
		before { plot.special_tax = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when local tax is not a number" do
		before { plot.local_tax = "def" }
		it { expect(plot).not_to be_valid }			
	end

	context "when other fee is not a number" do
		before { plot.other_fee = "def" }
		it { expect(plot).not_to be_valid }			
	end

=begin
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
=end

	describe "#phase" do
		it { expect(plot.phase).to be_valid	}

		context "when not present" do
			before	 { plot.phase_id = nil }
			it { expect(plot).not_to be_valid }
		end
	end

	describe "#contractor" do
		it  { expect(plot.contractor).to be_valid }
	end

	describe "#foreman" do
		it { expect(plot.foreman).to be_valid }
	end
end
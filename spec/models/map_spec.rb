require 'spec_helper'

describe Map do
	before 	{ @map = Map.new(name: "Villa Nara") }

	subject { @map }

	it { should respond_to(:name) }

	it { should be_valid }

	describe "when name is not presence" do
		before { @map.name = "" }
		it { should_not be_valid }
	end

	describe "when name is too long" do
		before { @map.name = "a" * 51 }
		it { should_not be_valid }
	end
end

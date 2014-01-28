require 'spec_helper'

describe Status do
	before {
		@status = Status.create(name: "Available")
	}
	subject { @status }

	it { should respond_to(:name) }
	it { should be_valid }

	context "when name is not present" do
		before { @status.name = "" }
		it { should_not be_valid } 
	end

	context "when code is longer than 50" do
		before { @status.name = "a" * 51 }
		it { should_not be_valid }
	end
end

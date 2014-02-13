require 'spec_helper'

describe Contractor do
	let(:contractor) { FactoryGirl.create(:contractor) }
	subject { contractor }

	it { should respond_to(:name) }
end

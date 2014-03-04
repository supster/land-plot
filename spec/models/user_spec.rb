require 'spec_helper'

describe User do
	let(:user) { FactoryGirl.create(:user) }

	it { expect(user).to respond_to(:email) }
	it { expect(user).to respond_to(:admin) }
	it { expect(user).to respond_to(:password) }
	it { expect(user).to respond_to(:password_confirmation) }
	it { expect(user).to respond_to(:password_digest) }
	it { expect(user).to respond_to(:remember_token) }

	describe "#email" do
		context "when not presence" do
			before {
				user.email = ""
			}

			it { expect(user).not_to be_valid }
		end

		context "when invalid emails" do
			before {
				user.email = "test@"
			}

			it {expect(user).not_to be_valid }
		end

		it "when valid emails" do
      addresses = %w[user@foo.com user_foo@b.org example.user@foo.jp a+b@email.com thai@mail.co.th]
      addresses.each do |valid_address|
        user.email = valid_address
				expect(user).to be_valid 
      end   
		end

		context "when duplicate" do
			before {
				@dup_user = user.dup
				@dup_user.save
			}
			it { expect(@dup_user).not_to be_valid }
		end
	end

	describe "#password" do
		context "when not presence" do
			before { user.password = "" }
			it { expect(user).not_to be_valid }
		end
	end

  describe "#remeber_token" do
    before { user.save }
    it "should have a nonblank remember token" do
      expect(user.remember_token).to_not be_blank
    end
  end

end

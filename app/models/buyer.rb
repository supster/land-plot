class Buyer < ActiveRecord::Base
  attr_accessible :address, :email, :first_name, :last_name, :phone
  has_many :plot
end

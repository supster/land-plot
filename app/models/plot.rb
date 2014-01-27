class Plot < ActiveRecord::Base
  attr_accessible :code, :home_type, :size, 
  								:row, :col, :group_id, :price
  belongs_to :map
  has_one :buyer

  validates :code, presence: true, length: { in: 2..20 }
  
end

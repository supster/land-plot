class Plot < ActiveRecord::Base
  attr_accessible :code, :home_type, :size, :price, :status_id,
  								:row, :col, :group_id, :deed_no, :comments
  belongs_to :map
  belongs_to :buyer
  belongs_to :status

  validates :code, presence: true, length: { in: 2..20 }
  validates :status_id, presence: true
  validates :size, numericality: true, allow_nil: true
  validates :price, numericality: true, allow_nil: true

  def status_name
  	self.status.name
  end
  
end

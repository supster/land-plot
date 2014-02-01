class Plot < ActiveRecord::Base
  attr_accessible :code, :home_type, :size, :price, :status_id,
  								:row, :col, :group_id, :deed_no, :comments,
                  :base_price, :extra_land_price, :house_add_on_price,
                  :plot_add_on_price
  belongs_to :map
  belongs_to :buyer
  belongs_to :status

  validates :code, presence: true, length: { in: 2..20 }
  validates :status_id, presence: true
  validates :size, numericality: true, allow_nil: true
  validates :price, numericality: true, allow_nil: true
  validates :base_price, numericality: true
  validates :extra_land_price, numericality: true
  validates :house_add_on_price, numericality: true
  validates :plot_add_on_price, numericality: true

  def status_name
  	self.status.name
  end
  
  def total_price
    self.base_price + self.extra_land_price + self.house_add_on_price + self.plot_add_on_price
  end
end

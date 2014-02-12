class Plot < ActiveRecord::Base
  attr_accessible :code, :home_type, :size, :price, :status_id,
  								:row, :col, :group_id, :deed_no, :comments,
                  :base_price, :extra_land_price, :house_add_on_price,
                  :plot_add_on_price, :phase_id, :contractor_pay_no,
                  :transfer_date, :transfer_fee, :tax_fee
  belongs_to  :map
  belongs_to  :buyer
  belongs_to  :status
  belongs_to  :phase

  before_save :update_transfer_fields

  validates :code, presence: true, length: { in: 2..20 }, uniqueness: true
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

  private

  def update_transfer_fields
    unless self.status.name == "Transferred"
      self.transfer_date = nil
      self.transfer_fee = nil
      self.tax_fee = nil      
    end
  end
end

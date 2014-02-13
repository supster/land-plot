class Plot < ActiveRecord::Base
  attr_accessible :code, :home_type, :size, :status_id,
  								:row, :col, :group_id, :deed_no, :comments,
                  :base_price, :extra_land_price, :house_add_on_price,
                  :plot_add_on_price, :common_charge, :phase_id, 
                  :transfer_date, :transfer_fee, :tax_price, 
                  :appr_price, :personal_tax, :special_tax, :local_tax, :other_fee,
                  :contractor_pay_no, :contractor_id, :foreman_id
  belongs_to  :map
  belongs_to  :buyer
  belongs_to  :status
  belongs_to  :phase
  belongs_to  :contractor
  belongs_to  :foreman

  #before_save :update_transfer_fields

  validates :code, presence: true, length: { in: 2..20 }, uniqueness: true
  validates :status_id, presence: true
  validates :phase_id, presence: true
  validates :size, numericality: true, allow_nil: true
  validates :base_price, numericality: true, allow_nil: true
  validates :extra_land_price, numericality: true, allow_nil: true
  validates :house_add_on_price, numericality: true, allow_nil: true
  validates :plot_add_on_price, numericality: true, allow_nil: true
  validates :common_charge, numericality: true, allow_nil: true
  validates :transfer_fee, numericality: true, allow_nil: true
  validates :tax_price, numericality: true, allow_nil: true
  validates :appr_price, numericality: true, allow_nil: true
  validates :personal_tax, numericality: true, allow_nil: true
  validates :special_tax, numericality: true, allow_nil: true
  validates :local_tax, numericality: true, allow_nil: true
  validates :other_fee, numericality: true, allow_nil: true

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
    end
  end
end

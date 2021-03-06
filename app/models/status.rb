class Status < ActiveRecord::Base
  attr_accessible :name, :color
  has_many :plots

  validates :name, presence: true, length: { maximum: 50 }
end

class Map < ActiveRecord::Base
  attr_accessible :name
  has_many :plots

  validates :name, presence: true, length: { maximum: 50 }
end

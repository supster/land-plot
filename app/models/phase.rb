class Phase < ActiveRecord::Base
	attr_accessible  :name
	has_many :plots
end
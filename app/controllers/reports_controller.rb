class ReportsController < ApplicationController
  before_filter :signed_in_user
	
	def show
		@statuses = Status.all.sort
		@phases = Phase.includes(:plots) 

		#\
		#			.select("name, status_id, count(*) c") \
		#			.group("name, status_id").order("name, status_id")

		@plot_count = Plot.count
	end
end

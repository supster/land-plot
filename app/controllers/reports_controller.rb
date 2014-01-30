class ReportsController < ApplicationController

	def show
		@statuses = Status.all
		@plot_count = Plot.count
	end
end

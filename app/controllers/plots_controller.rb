class PlotsController < ApplicationController
	def edit
		@plot = Plot.find(params[:id])
	end

	def update
		@plot = Plot.find(params[:id])
		if @plot.update_attributes(params[:plot])
			flash[:success] = "Updated Successful"
			redirect_to map_path(@plot.map_id)
		else
			render "edit"
		end
	end
end

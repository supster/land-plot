class PlotsController < ApplicationController
  before_filter :signed_in_user

	def edit
		@plot = Plot.find(params[:id])
	end

	def update
		@plot = Plot.find(params[:id])
		if @plot.update_attributes(params[:plot])
			plot_code = @plot.code
			flash[:success] = "Update Successful: #{plot_code}"
			redirect_to map_path(@plot.map_id)
		else
			render "edit"
		end
	end

	def index
		sort_column = "substr(code, 1,1), cast(substr(code, 2) as integer)"
		@phases = Phase.all
		
		if !params.has_key?(:phase)
			@plots = Plot.order(sort_column).all
		else
			@plots = Plot.where("phase_id = #{params[:phase]}").order(sort_column).all
		end
	end
end

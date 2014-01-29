class MapsController < ApplicationController
  def show
  	@map = Map.find(params[:id])
  	@plots = @map.plots.order("group_id, col")
  end

  def index
  	redirect_to map_path(1)
  end
end

class MapsController < ApplicationController
  def show
  	@map = Map.find(params[:id])
  	@plots = @map.plots.order("group_id, col")
  end
end

class MapsController < ApplicationController
  before_filter :signed_in_user

  def show
  	@map = Map.find(params[:id])
  	@plots = @map.plots.order("group_id, row, col")
  end

  def index
  	redirect_to map_path($map_id)
  end
end

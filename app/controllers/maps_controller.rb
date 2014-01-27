class MapsController < ApplicationController
  def show
  	@map = Map.find(params[:id])
  	@plots = @map.plots
  end
end

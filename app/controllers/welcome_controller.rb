class WelcomeController < ApplicationController
  def show
  	redirect_to map_path($map_id) if signed_in?
  end
end

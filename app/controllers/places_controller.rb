class PlacesController < ApplicationController

def index
  render :template => "places/index"
end

def create
  #start with new place
  @place = Places.new


end



end

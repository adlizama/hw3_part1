class PlacesController < ApplicationController

def index
  #render :template => "places/index"
  @place = Place.all
  
end

def new
  @place = Place.new

end


def create
  #start with new place
  @place = Place.new

  #assign user-entered form data to Place's columns
  @place["name"] = params["name"]

  #save Place row

  @place.save

  #redirect user
  
  redirect_to "/places"


end



end

class PlacesController < ApplicationController

def index
  #render :template => "places/index"
  @place = Place.all
  
end

def show
  #find a place
  @place = Place.find_by({"id" => params["id"]})
  @entry = Entry.where({"place_id" => @place["id"]})
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

class EntriesController < ApplicationController


  def index
    render :inline => "<h1>Welcome Entry Enthusiast</h1>"
  end

  def create
    #start with new entry
    @entry = Entry.new

    #assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    
    #save Entry ow
    @entry.save

    #redirect user  
    redirect to "/places"
  end

  def show

  end
  

end

class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    #I still don't really have a great grasp of how 'params' works. I know it gets defined by user input, and that 
    #:id is translated into whatever selected id the guest has 
    #but I don't understand the mechanics of it.
    #My understanding of it is nebulous at best.
  end

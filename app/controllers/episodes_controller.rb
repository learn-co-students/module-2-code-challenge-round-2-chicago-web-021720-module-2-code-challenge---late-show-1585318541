class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show 
    @episode = Episode.find(params[:id])
    #I still don't really have a great grasp of how 'params' works. I know it gets defined by user input, and that 
    #:id is translated into whatever selected id the guest has 
    #but I don't understand the mechanics of it.
    #My understanding of it is nebulous at best.

    @guests = []
    Appearance.each do |appearance|
      if appearance.episode_id == @episode.id 
        @guests << appearance.guest_id
      end
    end

# - Episode date
# - A list of the guests who were on that episode
# - Each guest's name should link to the Guest Show page
  end
end

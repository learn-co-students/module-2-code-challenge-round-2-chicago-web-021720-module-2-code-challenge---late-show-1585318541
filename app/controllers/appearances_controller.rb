class AppearancesController < ApplicationController

    def new
        #the html file doesn't read 'guest.appearances'
        #
        @appearance = Appearance.new
        @episode_list = Episode.all
        @guest_list = Guest.all

    end



end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
  # get '/guests/new_appearance' do 'guests#create'
  # end

  get '/appearances/new', to: 'appearances#new'
  

  get 'guests/:id', to: 'guests#show'
  

  get 'episodes/:id', to: 'episodes#show'
  

end


# The few things I had kind of working stopped, and now I have an error that says
# "Missing :controller key on routes definition, please check your routes." every time I try to start a server or do anything.
#I have no idea what changed but the routes file looks fine to me.

#changed the => to 'to:' in all my routes, and this changes the error to say it's expecting an end of input.

#fixed it. though I'm still not sure why it broke in the first place.

#I also don't know why my appearance/new page renders a massive block of objects halfway down the page.
#there's nothing in the erb file calling to render any of that, that I can see.

#tried writing <%= link_to "guest.name," guest %> in the appearane/new erb, but this breaks it. Can't seem to get
#links to work.

#show pages for guests and episodes don't work but I added what I could to the erbs.

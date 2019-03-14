Rails.application.routes.draw do
  #get 'track/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tracks#index'

  #get 'track#new'

  resources :tracks
end

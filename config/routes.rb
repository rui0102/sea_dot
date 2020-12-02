Rails.application.routes.draw do
  #get 'home/top'
  root 'home#top'

  devise_for :users, controllers: {
    registrations: 'users/registrations', 
    sessions: 'users/sessions'
  }

  resources :user, only: [:show]

  get '/creatures_infos/map', to:'creatures_infos#map'

  resources :creatures_infos, only: [:index, :show, :new, :create, :destroy ]

end

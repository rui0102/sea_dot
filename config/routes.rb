Rails.application.routes.draw do
  # get 'home/top'
  root 'home#top'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :user, only: [:show]

  get '/creatures_infos/map', to: 'creatures_infos#map'

  resources :creatures_infos, only: %i[index show new create destroy]
end

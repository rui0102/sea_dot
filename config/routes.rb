Rails.application.routes.draw do
  #get 'home/top'
  root 'home#top'

  resources :user, only: [:show]

  devise_for :users, controllers: {
    registrations: 'users/registrations', #deviseのルーティング追加。viewの変更を反映させた（sign up）
    sessions: 'users/sessions'
  }

  resources :creatures_infos, only: [:index, :show, :new, :create, :destroy ]


end

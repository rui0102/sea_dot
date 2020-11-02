Rails.application.routes.draw do
  #get 'home/top'
  root 'home#top'

  devise_for :users, controllers: {
    registrations: 'users/registrations', #deviseのルーティング追加。viewの変更を反映させた（sign up）
    sessions: 'users/sessions'
  }

  devise_scope :user do #キータ
    get "user/:id", :to => "users/registrations#detail"
    # get "signup", :to => "users/registrations#new"
    # get "login", :to => "users/sessions#new"
    # get "logout", :to => "users/sessions#destroy"
  end

  resources :creatures_infos, only: [:index, :new, :show ]
  #get 'creatures_infos/index'  #上に書き換えた。
end

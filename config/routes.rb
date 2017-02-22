Rails.application.routes.draw do
  resources :requests
  resources :playlists
  resources :users
  resources :rooms
  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show'
  # put 'users/:id', to: 'users#update'
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end

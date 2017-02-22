Rails.application.routes.draw do
  resources :playlists
  resources :rooms
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end

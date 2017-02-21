Rails.application.routes.draw do
  resources :rooms
  get 'users/:id', to: 'users#show'
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end

Rails.application.routes.draw do
  resources :requests do
    member do
      put :accept
      put :reject
    end
  end
  resources :users, only: [:index, :show, :update, :destroy]
  resources :rooms
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end

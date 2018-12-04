Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :photographers
      resources :images
      resources :users, only: [:create, :update,:show]
      resources :orders, only: [:index, :create, :destroy]
      resources :comments, only: [:index, :create, :destroy]
      resources :user_photographers, only: [:index, :create, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users do
        get '/profile', to: 'users#profile'
        resources :goals
        resources :workouts
      end
      post '/users/login', to: 'auth#create'
    end
  end


end

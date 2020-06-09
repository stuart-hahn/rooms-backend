Rails.application.routes.draw do
  post 'sessions/login'
  post 'sessions/logout'
  get 'sessions/get_current_user'
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :items, only: [:index]
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

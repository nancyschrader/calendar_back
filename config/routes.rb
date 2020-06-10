Rails.application.routes.draw do
  namespace :api do
      resources :events, only: [:index, :create, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
    root to: 'home#index'
end

Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        
      resources :events, only: [:index, :create, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: 'home#index'
    end
  end
end

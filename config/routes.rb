Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  constraints format: :json do
    resources :households, only: [:show, :create, :index, :update]
    resources :people, only: [:show, :create, :index, :destroy] do
      resources :vehicles, only: [:show, :create, :index, :destroy]
    end
  end
end

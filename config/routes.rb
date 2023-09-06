Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :activities, only: [:index, :show]

  resources :itineraries do
    resources :selections, only: %i[index]
  end

  resources :selections, only: %i[destroy]
end

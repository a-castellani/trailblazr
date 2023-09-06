Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "dashboard", to: "pages#dashboard"

  resources :itineraries do
    resources :collaborations, only: [:index, :new, :show]
  end

  resources :activities, only: [:index, :show]
end

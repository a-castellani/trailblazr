Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :itineraries do
    resources :collaborations, except: %i[new edit update destroy]
    resources :messages, only: [:create]
    resources :selections, only: %i[index]
  end

  resources :collaborations, only: [:destroy]
  resources :activities, only: [:index, :show] do
    resources :selections, only: %i[create]
  end

  resources :selections, only: %i[destroy]
end

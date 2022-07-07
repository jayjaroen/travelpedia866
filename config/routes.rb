Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :locations, only: [:index] do
    resources :itineraries, only: [:index]
    end

  resources :itineraries, only: [ :new, :create, :show] do
    resources :booking_requests, only: [:index, :new, :create]
    end

    resources :users, only: [:show]
    resources :itineraries, only: [:index, :edit, :update ]
    resources :booking_requests, only: [:index, :edit, :update]


end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :locations, only: [:index, :show] do
    resources :itineraries, only: [:index, :show]
    end

  resources :itineraries, only: [:new, :create]
  resources :itineraries, only: [:index] do
    resources :booking_requests, only: [:create]
    end

  resources :users, only:[:show] do
    resources :booking_requests, only: [:index, :show]
  end
  resources :booking_requests, only:[:update]
end

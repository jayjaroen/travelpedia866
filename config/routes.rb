Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  # resources :lists, only: [:index, :show, :create, :destroy ] do
  #   resources :bookmarks, only: [:new, :create]
  # end
  # resources :bookmarks, only: [:destroy]

  resources :locations, only: [:index, :show] do
    resources :itineraries, only: [:index, :show, :new, :create, :destroy] do
      resources :booking_requests, only: [:index, :show, :new, :create, :destroy]
    end
  end
end

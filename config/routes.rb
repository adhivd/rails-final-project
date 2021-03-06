Rails.application.routes.draw do
  get 'favorites', to: "pages#favorites"
  get 'listings', to: "pages#my_listings"
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :users
  resources :listings
  resources :favorites
  get 'home/show'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

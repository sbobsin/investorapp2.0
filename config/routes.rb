Rails.application.routes.draw do
  resources :capital_distributions
  resources :capital_accounts
  resources :captial_contributions
  resources :properties
  devise_for :users
  resources :deals

  root to: "pages#dashboard"
  get "/", to: "pages#dashboard"
  get "investors", to: "pages#investor_index"  
  get "users", to: "users#index"
  delete "users/:id", to: "users#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

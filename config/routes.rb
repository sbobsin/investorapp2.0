Rails.application.routes.draw do
  resources :captial_contributions
  resources :properties
  devise_for :users
  resources :deals

  root to: "pages#dashboard"
  get "/", to: "pages#dashboard"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

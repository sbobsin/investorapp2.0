Rails.application.routes.draw do
  resources :properties
  devise_for :users
  resources :deals

  get "/", to: "pages#dashboard"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

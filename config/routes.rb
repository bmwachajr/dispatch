Rails.application.routes.draw do
  resources :schools
  devise_for :users

  resources :dashboard
  root to: "dashboard#index"

  get '/home' => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

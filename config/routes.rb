Rails.application.routes.draw do


  resources :messages
  resources :conversations
  resources :phones
  resources :charges
  # resources :images
  root 'welcome#index'
  get 'charges/thanks'

  devise_for :users, :controllers => { :registrations => "users/registrations" }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

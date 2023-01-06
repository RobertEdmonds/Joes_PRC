Rails.application.routes.draw do
  resources :orders
  resources :rifle_pictures
  resources :parts
  resources :rifles
  resources :xxlarges
  resources :xlarges
  resources :larges
  resources :medium
  resources :smalls
  resources :xsmalls
  resources :apperrals
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

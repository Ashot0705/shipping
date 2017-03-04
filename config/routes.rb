Rails.application.routes.draw do
  get 'boats/index'

  devise_for :users
  resources :jobs
  resources :boats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "jobs#index"
end

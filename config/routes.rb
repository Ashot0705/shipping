Rails.application.routes.draw do
	root to: "jobs#index"
  resources :boats

  devise_for :users
  resources :jobs

  post "/select-boat", to: "jobs#select_boat"
end

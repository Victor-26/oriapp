Rails.application.routes.draw do
  devise_for :users
  get 'cases/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cases#index"
  resources :cases, only: [:new, :create] do
    # resources :comments, only: [:create]
   end
end

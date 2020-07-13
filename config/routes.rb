Rails.application.routes.draw do

  root to: 'homes#index'
  get 'home/about' => 'homes#show'

  devise_for :users

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

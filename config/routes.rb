Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  resources :activities, only: [:index, :new, :create, :show, :destroy]
end

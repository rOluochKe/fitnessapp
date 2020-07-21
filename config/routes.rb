Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  # resources :activities, only: [:index, :new, :create, :show, :destroy]
  resources :activities, only: [:new, :create, :index, :show, :edit, :update, :destroy]
end

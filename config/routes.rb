Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about_us' => 'static_pages#about'
  devise_for :users
  resources :activities, only: [:new, :create, :index, :show, :edit, :update, :destroy]
end

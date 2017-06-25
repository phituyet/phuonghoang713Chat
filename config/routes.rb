Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  get 'sign_in' => 'sessions#new'

  get 'index' => 'home#index'
  delete 'sign_out' => 'sessions#destroy'
  resources :messages
  root 'home#index'


 end

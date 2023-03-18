Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'
  post 'toggle_like', to: 'likes#toggle_like', as: :toggle_like
  resources :comments, only: %I[create destroy]
  resources :users, only: [:show]

  get 'set_theme', to: 'theme#update'
  # devise_scope :user do
  #   root 'devise/sessions#new'
  # end
end

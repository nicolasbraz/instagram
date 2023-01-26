Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'
  post 'toggle_like', to: 'likes#toggle_like', as: :toggle_like
  # devise_scope :user do
  #   root 'devise/sessions#new'
  # end

  resources :comments, only: %I[create destroy]
end

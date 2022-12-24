Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'
  # devise_scope :user do
  #   root 'devise/sessions#new'
  # end
end

# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root 'volunteers#index'
  resources :volunteers, only: %i[index show create update destroy]
  resources :messages, only: %i[index create]
  resources :users, only: %i[index show]
end

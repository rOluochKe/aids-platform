# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'volunteers#index'
  resources :volunteers
  resources :conversations do
    resources :messages
  end
end

# frozen_string_literal: true

Rails.application.routes.draw do

  use_doorkeeper

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  resources :product,  only: [:show]

  resources :category, only: [:show]

  resource :cart, only: %i[destroy show] do
    resources :items, only: %i[destroy create]
  end

  resources :search,   only: [:index]

  namespace :api do
    namespace :v1 do
      resources :profile,  only: [:index]
      resources :products, only: [:index]
    end
  end

  root to: 'main#index'
end

Rails.application.routes.draw do
  devise_scope:user do
    root to: 'users/sessions#create'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    password: 'users/passwords',
    registrations: 'users/registrations'
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    password: 'admins/password',
    registrations: 'admins/registrations'
  }

  namespace :users do
    get 'pages/index'
    get 'partsshop/index'

    scope :partsshop do
      resources :orders, only: [:index, :show, :new, :create]
      resources :parts, only: [:index, :show]
    end
  end

  namespace :admins do
    get 'pages/index'
  end

  #root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

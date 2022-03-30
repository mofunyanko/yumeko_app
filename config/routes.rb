Rails.application.routes.draw do
  root 'pages#index'
  #get 'pages/show'
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
  #root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

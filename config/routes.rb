Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#welcome'
  resource :sessions, only: [:new, :create, :destroy]
  resource :secrets, only: [:show]





end

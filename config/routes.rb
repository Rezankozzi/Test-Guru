# frozen_string_literal: true

Rails.application.routes.draw do
  root 'sessions#start'
  get :login, to: 'sessions#new'
  get :signup, to: 'users#new'
  post :logout, to: 'sessions#delete'
  resources :users, only: :create
  resources :sessions, only: %i[create start]
  resources :test_passages, only: %i[update show result] do
    get 'result', on: :member
  end

  resources :tests do
    member do
      post 'start'
      get 'start'
    end
    resources :questions, shallow: true do
      resources :answers, shallow: true
    end
  end
end

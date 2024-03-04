# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tests#index'
  get :login, to: 'sessions#new'
  get :signup, to: 'users#new'
  resources :users, only: :create
  resources :sessions, only: :create
  resources :test_passages, only: %i[update show result] do
    get 'result', on: :member
  end

  resources :tests do
    get 'start', on: :member
    resources :questions, shallow: true do
      resources :answers, shallow: true
    end
  end
end

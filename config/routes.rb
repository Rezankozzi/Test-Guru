# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tests#index'
  get :signup, to: 'users#new'
  resources :users, only: :create
  resources :test_passages, only: %i[update show result] do
    get 'result', on: :member
  end

  resources :tests do
    post 'start', on: :member
    resources :questions, shallow: true do
      resources :answers, shallow: true
    end
  end
end

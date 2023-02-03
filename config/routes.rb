# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tests#index'

  resources :test_passages, only: %i[update show result] do
    get 'result', on: :member
  end

  resources :tests do
    post 'start', on: :member
    resources :questions, shallow: true
  end

  resources :questions do
    resources :answers, shallow: true
  end
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root 'test_passages#start'
  devise_for :users, path: :gurus, path_name: { sign_in: :login, sign_out: :logout},
             sign_out_via: [:delete, :post]

  resources :test_passages, only: %i[update show result] do
    get 'result', on: :member
  end

  resources :tests do
    member do
      post 'start'
    end
    resources :questions, shallow: true do
      resources :answers, shallow: true
    end
  end
end

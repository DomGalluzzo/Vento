Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  # get 'contract_plans/new'
  # get 'contract_plans/create'
  # get 'public_injuries/new'
  # get 'public_injuries/create'
  # get 'cancellations/new'
  # get 'cancellations/create'

  resources :festivals, only: [:new, :create, :index] do
    resources :cancellations, only: [:create]
    resources :public_injuries, only: [:create]
    resources :contracts, only: [:new, :create]
  end

  resources :contracts, only: [:show] do
    resources :contract_plans, only: [:new, :create]
  end
end

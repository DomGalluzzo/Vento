Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  # get 'contract_plans/new'
  # get 'contract_plans/create'
  # get 'public_injuries/new'
  # get 'public_injuries/create'
  # get 'cancellations/new'
  # get 'cancellations/create'

  resources :festivals, only: [:new, :create] do
    resources :contracts, only: [:new, :create]
  end

  resources :cancellations, :public_injuries, only: [:new, :create] do
    resources :contract_plans, only: [:new, :create]
  end
end

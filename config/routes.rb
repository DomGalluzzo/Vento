Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  # get 'contract_plans/new'
  # get 'contract_plans/create'
  # get 'public_injuries/new'
  # get 'public_injuries/create'
  # get 'cancellations/new'
  # get 'cancellations/create'

  resources :festivals, only: [:new, :create, :show, :index] do
    resources :contracts, only: [:new, :create]
    resources :cancellations, only: [:new, :create]
    # resources :public_injuries, only: [:create]
  end

  resources :contracts, only: :show do 
    resources :cancellations
    resources :public_injuries
  end


  # resources :cancellations do
  #   resources :contract_plans
  # end

  # resources :contracts, only: [:show] do
  #   resources :contract_plans, only: [:new, :create]
  # end
end

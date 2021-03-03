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

  resources :contracts, only: [:show] do
    resources :contract_plans, only: [:new, :create] do
      collection do 
        post '/public_injuries', to: 'contract_plans#public_injuries', as: :public_injuries
        post '/cancellations', to: 'contract_plans#cancellations', as: :cancellations
      end
    end
  end
end

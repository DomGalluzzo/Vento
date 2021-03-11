Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  get "contracts/download_pdf"

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
  get "my_festivals", to: "festivals#my_festivals", as: "my_festivals"

  resources :contracts, only: :show do 
    resources :cancellations
    resources :public_injuries
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # resources :cancellations do
  #   resources :contract_plans
  # end

  # resources :contracts, only: [:show] do
  #   resources :contract_plans, only: [:new, :create]
  # end
end

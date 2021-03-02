Rails.application.routes.draw do
  get 'festivals/new'
  get 'festivals/create'
  devise_for :users

  root to: 'pages#home'

  resources :events, only: %i[new create]
  
  resources :insurance_coverages, only: :index do
    resources :festival_policies, only: %i[new create]
  end
end

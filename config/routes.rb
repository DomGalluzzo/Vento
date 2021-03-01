Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :events, only: %i[new create]
  
  resources :insurance_policies, only: :index do
    resources :festival_policies, only: %i[new create]
  end
end

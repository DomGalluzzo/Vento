Rails.application.routes.draw do

  get 'contract_plans/new'
  get 'contract_plans/create'
  get 'public_injuries/new'
  get 'public_injuries/create'
  get 'cancellations/new'
  get 'cancellations/create'
  devise_for :users
  root to: 'pages#home'
end

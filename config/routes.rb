Rails.application.routes.draw do
  root 'employees#index'

  resources :employees
  resources :jobs
  resources :orgs
  resources :employee_statuses

  devise_for :users
  resources :users, only: [:index]
end

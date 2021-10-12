Rails.application.routes.draw do
  root 'employees#index'

  resources :employees
  resources :jobs
  resources :orgs
  
  devise_for :users

end

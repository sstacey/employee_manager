Rails.application.routes.draw do
  root 'employees#index'

  resources :employees
  resources :jobs
  
  devise_for :users

end

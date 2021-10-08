Rails.application.routes.draw do
  root 'employees#index'

  resources :employees
  
  devise_for :users

end

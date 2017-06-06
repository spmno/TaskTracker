Rails.application.routes.draw do
  resources :task_tables
  resources :customers
  resources :production_plans
  resources :stocks
  resources :products
  resources :welcomes
  root :to => 'welcomes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

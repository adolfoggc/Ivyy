Rails.application.routes.draw do
  devise_for :users
  resources :to_dos
  resources :user_tasks
  root "to_dos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

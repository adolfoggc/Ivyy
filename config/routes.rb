Rails.application.routes.draw do
  resources :to_dos
  resources :user_tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

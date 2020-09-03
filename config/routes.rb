Rails.application.routes.draw do
  resources :user_goals
  resources :goals
  resources :users
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

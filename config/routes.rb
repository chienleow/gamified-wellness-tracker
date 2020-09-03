Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new' # we don't need a post 'signup' because resources :users give us post 'users' => 'users#create'

  resources :user_goals
  resources :goals
  resources :users
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

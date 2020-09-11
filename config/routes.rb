Rails.application.routes.draw do
  get '/' => 'sessions#home'
  
  get '/signup' => 'users#new' # we don't need a post 'signup' because resources :users give us post 'users' => 'users#create'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  delete '/logout' => 'sessions#destroy'

  get 'auth/google_oauth2/callback' => 'sessions#google'

  get '/last_updated_goals' => 'users#last_updated'

  resources :user_goals
  resources :goals
  resources :users
  resources :teams do
    resources :users, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

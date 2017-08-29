Rails.application.routes.draw do
  get 'sessions/new'

  get 'questions/index'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  root to: 'questions#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :questions
  resources :users, except: [:create, :new]
end

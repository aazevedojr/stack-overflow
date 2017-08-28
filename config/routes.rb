Rails.application.routes.draw do
  get 'questions/index'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  root to:"questions#index"
  resources :questions
  resources :users, except: [:create, :new]
end

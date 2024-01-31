Rails.application.routes.draw do
  root 'posts#index'
  post '/upload', to: 'posts#create'
  
  post '/register', to: 'users#create'
  post '/login', to: 'authentication#login'
  post '/logout', to: 'authentication#logout'

  get '/users', to: 'users#index'
end

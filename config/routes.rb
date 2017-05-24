Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/cookies' => 'products#index'
  get '/cookies/new' => 'products#new'
  post '/cookies' => 'products#create'
  get '/cookies/:id' => 'products#show'

  get '/cookies/:id/edit' => 'products#edit'
  patch '/cookies/:id' => 'products#update'
  delete '/cookies/:id' => 'products#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/random' => 'products#random'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/checkout' => 'carted_products#index'
  post '/checkout' => 'carted_products#create'


end

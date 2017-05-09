Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/cookies' => 'products#index'
  get '/cookies/new' => 'products#new'
  post '/cookies' => 'products#create'
  get '/cookies/:id' => 'products#show'
  get '/cookies/:id/edit' => 'products#edit'
  patch '/cookies/:id' => 'products#update'
  delete '/cookies/:id' => 'products#destroy'




end

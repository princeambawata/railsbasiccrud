Rails.application.routes.draw do
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  get '/articles/:id' => 'articles#show'
  post '/articles/create' => 'articles#create'

end

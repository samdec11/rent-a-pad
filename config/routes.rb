RentAPad::Application.routes.draw do
  resources :users, :hoods, :messages
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  root :to => 'home#index'
end

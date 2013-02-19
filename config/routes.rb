RentAPad::Application.routes.draw do
  resources :users, :hoods
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  root :to => 'home#index'
end

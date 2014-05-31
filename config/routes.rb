EmblogServer::Application.routes.draw do
  resources :posts

  use_doorkeeper
  root :to => "home#index"
  get 'users/current_user', to: 'users#current'
  devise_for :users, :controllers => {:registrations => "registrations"}
end
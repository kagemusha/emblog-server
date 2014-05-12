EmblogServer::Application.routes.draw do
  resources :posts

  use_doorkeeper
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
end
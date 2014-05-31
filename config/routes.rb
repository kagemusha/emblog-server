EmblogServer::Application.routes.draw do
  use_doorkeeper

  get 'users/current_user', to: 'users#current'
  devise_for :users, :controllers => {:registrations => "registrations"}

  get 'posts/?type=contributor', to: 'posts#contributed'
  resources :posts

  root :to => "home#index"
end
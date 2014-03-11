Jraff::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  resources :users
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]

  root "static_pages#home"
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/edit',    to: 'users#edit',           via: 'get'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase


  # Vanity URLs. Make sure at the bottom of this file.
end

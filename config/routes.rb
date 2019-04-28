Rails.application.routes.draw do
  get 'orders/new'
  get 'orders/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # product routing
  root 'puppies#index'
  get '/puppies', to: 'puppies#index', as: 'puppies'
  post '/puppies', to: 'puppies#create'
  get '/puppies/new', to: 'puppies#new', as: 'new_puppy'
  get '/puppies/:id', to: 'puppies#show', as: 'puppy'
  get '/pupies/:id/edit', to: 'puppies#edit', as: 'edit_puppy'
  put '/puppies/:id', to: 'puppies#update'
  delete '/puppies/:id', to: 'puppies#delete'
  
  # order routing
  get '/puppies/:id/orders/new', to: 'orders#new', as: 'new_order'
  post '/puppies/:id/orders', to: 'orders#create'
  get '/puppies/:id/orders/:id', to: 'orders#show', as: 'order'
end

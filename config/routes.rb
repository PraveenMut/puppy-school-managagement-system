Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'puppies#index'
  get '/puppies', to: 'puppies#index', as: 'puppies'
  post '/puppies', to: 'puppies#create'
  get '/puppies/new', to: 'puppies#new', as: 'new_puppy'
  get '/puppies/:id', to: 'puppies#show', as: 'puppy'
  get '/pupies/:id/edit', to: 'puppies#edit', as: 'edit_puppy'
  put '/puppies/:id', to: 'puppies#update'
  delete '/puppies/:id', to: 'puppies#delete'
end

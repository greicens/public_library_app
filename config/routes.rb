Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'
  get '/libraries' => 'libraries#index'
  get '/libraries/new' => 'libraries#new', as: 'new_library'
  post '/libraries' => 'libraries#create'
  get '/libraries/:id' => 'libraries#show', as: 'library'
  get '/libraries/:id/edit' => 'libraries#edit', as: 'edit_library'
  patch '/libraries/:id' => 'libraries#update', as: 'update_library'
  delete '/libraries/:id' => 'libraries#destroy', as: 'delete_library'
end

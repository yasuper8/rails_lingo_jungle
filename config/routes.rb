Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/users" => "users#index", as: 'users'
  # get "/users/new" => "users#new", as: 'new_user'
  post "/users" => "users#create"

  get '/' => 'sessions#index'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new', as: 'new_user'

end

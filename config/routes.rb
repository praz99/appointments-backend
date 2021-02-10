Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'session#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users, only: [:create, :show]
end

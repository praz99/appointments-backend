Rails.application.routes.draw do
  post 'auth/login', to: 'authentication#create'
  resources :users, only: [:create, :show]
  resources :houses do
    resources :appointments, only: [:create, :destroy]
  end
end

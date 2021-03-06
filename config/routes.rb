Rails.application.routes.draw do
  root to: 'users#index'

  get '/auth/github', as: :github_login
  post '/signout', to: 'sessions#destroy', as: :github_logout
  get '/auth/:provider/callback', to: 'sessions#create'

  resources :dashboard, only: [:show], as: 'show_page'
  resources :users, only: [:show], as: 'user_profile'
end

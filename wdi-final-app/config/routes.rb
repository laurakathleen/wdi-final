Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/teams', to: 'teams#index'
  get '/teams/new', to: 'teams#new', as: 'new_teams'
  post '/teams', to:'teams#create'
  get '/teams/:team_id', to: 'teams#show', as: 'team'

  get '/users/:user_id/teams', to: 'team_users#index', as: 'user_teams'
  post '/teams/:team_id/users', to: 'team_users#create', as: 'team_users'
  get '/teams/:team_id/users/show', to: 'teams#show', as: 'users_in_a_team'

  get '/users/:user_id/logs/', to: 'logs#index', as: 'user_logs'
  get '/users/:user_id/logs/new', to: 'logs#new', as: 'new_log'
  post '/users/:user_id/logs', to: 'logs#create'
  get '/users/:user_id/logs/:log_id', to: 'logs#show', as: 'log'
  get '/users/:user_id/logs/:log_id/edit', to: 'logs#edit', as: 'edit_log'
  patch '/users/:user_id/logs/:log_id/', to: 'logs#update'

end

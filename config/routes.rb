Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :user
resources :session
 post '/login', to: 'sessions#create'
post '/signup', to: 'users#create'
get '/me', to: 'users#show'
delete '/logout', to: 'sessions#destroy'
end

Rails.application.routes.draw do
   root to: "welcome#index"
   get '/login' => 'sessions#new'
   get '/signup' => 'users#new'
   post '/users' => 'users#create'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'
   post '/notification' => 'notification#create'
end

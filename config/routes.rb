Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'landing_page#index'
  #get '/jogadores', to: 'players#index'

  #get '/teams', to: 'teams#index'
  #get '/teams/:id', to: 'teams#show'
  resources :teams, only: [:index, :show], path: "times"
  resources :players, only: [:index, :show], path: "jogadores"
  #resources :players, path: "jogadores"
end

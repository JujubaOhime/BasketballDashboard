Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'landing_page#index'
  #get '/jogadores', to: 'players#index'

  #get '/teams', to: 'teams#index'
  #get '/teams/:id', to: 'teams#show'
  resources :teams, only: [:index, :show], path: "times" do
    collection do
      get :comparison
    end
  end
  get 'teams/search', to: 'teams#search'

 

  resources :players, only: [:index, :show], path: "jogadores" do
    collection do
      get :comparison
    end
  end

  get 'players/search', to: 'players#search'
  #resources :players, path: "jogadores"
  
  
end

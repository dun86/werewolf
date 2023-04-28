Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :games
  resources :positions
  resources :players
  resources :votes
  resources :messages

  resources :games do
    resources :players, only: [:index, :create, :destroy]
  end

  resources :votes, only: [:create, :update, :destroy]
  resources :messages, only: [:index, :create]
end

Rails.application.routes.draw do
  resources :games
  resources :leagues

  root "home#index"
end

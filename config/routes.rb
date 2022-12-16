Rails.application.routes.draw do
  resources :airplanes

  # resource :airports, only: [:show]
  resources :airports
end

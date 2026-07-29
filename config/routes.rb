Rails.application.routes.draw do
  resources :matches, only: [ :index ]
  resources :teams, only: [ :index, :show ]
end

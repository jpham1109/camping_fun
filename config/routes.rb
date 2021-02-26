Rails.application.routes.draw do
  resources :sign_ups, only: [:new, :create]
  get '/campers', to: 'campers#index', as: 'campers'
  get '/campers/new', to: 'campers#new', as: 'new_camper'
  post '/campers', to: 'campers#create'
  get '/campers/:id', to: 'campers#show', as: 'camper'

  get '/activities', to: "activities#index", as: "activities"
  get '/activities/:id', to: 'activities#show', as: 'activity'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  root to: 'events#index'

      resources :events
      resources :order_tickets

  get '/cart', to: 'order_tickets#index'
  resources :order_tickets, path: '/cart/tickets'
  
end

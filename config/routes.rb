Rails.application.routes.draw do

  root to: 'adapters/payments/events#index'

  namespace 'adapters' do
    namespace 'payments' do
      resources :events
      resources :order_tickets
    end
  end

  # get '/cart', to: 'order_tickets#index'
  # resources :order_tickets, path: '/cart/tickets'

end

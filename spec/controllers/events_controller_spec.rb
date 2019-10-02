require 'rails_helper'

module Adapters
  module Payments

    RSpec.describe EventsController, type: :controller do
      context 'GET #index' do
        it 'returns a success response' do
          get :index
          expect(response).to be_success # response.success?
      end
    end


      context 'GET #show' do
        it 'returns a success response' do

          event = Event.create!(id: 1, name: Faker::Esport.event, description: Faker::Lorem.sentence, date: rand(DateTime.now..DateTime.now + 100.days), time: rand(Time.now..Time.now + 600.minutes))

          ticket = Ticket.create!({id: 1, price: rand(10.99..200.99), available_tickets: rand(10..30)})

          get :show, params: { id: event.to_param, id: ticket.to_param }
          expect(response).to be_success
        end
      end
    end

  end
end

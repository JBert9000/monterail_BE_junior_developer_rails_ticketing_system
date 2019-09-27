module Adapters
  module Payments

    class EventsController < ApplicationController

      def index
        @events = Event.order('created_at DESC')
        @tickets = Ticket.order('created_at DESC')
        render template: "/adapters/payments/events"
      end

      def show
        @event = Event.find(params[:id])
        @tickets = Ticket.find(params[:id])
        render template: "/adapters/payments/show_events"
      end

      def update
        @event = Event.find(params[:id])
        if article.update_attributes(event_params)
          @event.available_tickets -= 1
        else
          return "Error"
          render template: "/adapters/payments/show_events"
        end
      end

    end

  end
end

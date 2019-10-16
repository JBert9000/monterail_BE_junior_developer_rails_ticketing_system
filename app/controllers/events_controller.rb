    class EventsController < ApplicationController

      def index
        @events = Event.order('created_at DESC')
        @ticket = Ticket.order('created_at DESC')
        render template: '/events/events'
      end

      def show
        @event = Event.find(params[:id])
        @ticket = Ticket.find(params[:id])
        render template: "/events/show_events"
      end

      def update
        @event = Event.find(params[:id])
        if article.update_attributes(event_params)
          @event.available_tickets -= 1
        else
          return "Error"
          render template: "/events/show_events"
        end
      end

    end

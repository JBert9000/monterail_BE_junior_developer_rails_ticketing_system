class OrderTicketsController < ApplicationController

  def index
    @tickets = current_cart.order.tickets

  end

  def create
    current_cart.add_ticket(
      ticket_id: params[:ticket_id],
      quantity: params[:quantity]
    )

    redirect_to order_tickets_path
  end

  def destroy
    current_cart.remove_ticket(id: params[:id])
    redirect_to order_tickets_path
  end

end

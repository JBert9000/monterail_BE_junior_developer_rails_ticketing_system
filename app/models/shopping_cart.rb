class ShoppingCart

  def initialize(token:)
    @token = token
  end

  def order
    @order ||= Order.find_or_create_by(token: @token) do |order|
      order.sub_total = 0
    end
  end

  def add_ticket(ticket_id:, quantity: 1)
    ticket = Ticket.find(ticket_id)

    order_ticket = order.tickets.find_or_create_by(
      ticket_id: ticket_id
    )

    order_ticket.price = ticket.price
    order_ticket.quantity = quantity

    order_ticket.save
  end

end

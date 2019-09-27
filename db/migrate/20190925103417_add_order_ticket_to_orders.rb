class AddOrderTicketToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_tickets, :order, foreign_key: true, null: false
  end
end

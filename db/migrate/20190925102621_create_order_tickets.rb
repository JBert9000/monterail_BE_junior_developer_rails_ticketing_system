class CreateOrderTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :order_tickets do |t|
      t.belongs_to :order, null: false
      t.belongs_to :ticket, null: false
      t.integer :quantity, null: false, default: 0
      t.decimal :price, null: false, precision: 15, scale: 2

      t.timestamps
    end

    add_foreign_key :order_tickets, :orders, name: 'fk_order_tickets_to_order'
    add_foreign_key :order_tickets, :tickets, name: 'fk_order_tickets_to_ticket'
  end
end

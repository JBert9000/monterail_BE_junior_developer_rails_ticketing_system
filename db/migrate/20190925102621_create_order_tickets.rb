class CreateOrderTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :order_tickets do |t|
      t.integer :quantity, null: false, default: 0
      t.decimal :price, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end

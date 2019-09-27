class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :available_tickets, null: false
      t.decimal :price, null:false, precision: 15, scale: 2

      t.timestamps
    end
  end
end

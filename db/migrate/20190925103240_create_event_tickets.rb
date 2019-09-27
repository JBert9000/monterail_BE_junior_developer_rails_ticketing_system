class CreateEventTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :event_tickets do |t|
      t.belongs_to :ticket, foreign_key: true, null: false
      t.belongs_to :event, foreign_key: true, null: false

      t.timestamps
    end
  end
end

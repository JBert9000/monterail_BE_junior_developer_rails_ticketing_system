class CreateEventTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :event_tickets do |t|
      t.belongs_to :ticket, foreign_key: true, null: false
      t.belongs_to :event, foreign_key: true, null: false

      t.timestamps
    end

    add_foreign_key :event_tickets, :events, name: 'fk_event_tickets_to_events'
    add_foreign_key :event_tickets, :tickets, name: 'fk_event_tickets_to_tickets'
  end
end

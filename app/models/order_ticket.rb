class OrderTicket < ApplicationRecord

  belongs_to :order
  belongs_to :event_ticket
  belongs_to :ticket
  belongs_to :event

  has_many :tickets, through: :orders

end

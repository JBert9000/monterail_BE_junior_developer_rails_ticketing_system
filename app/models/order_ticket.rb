class OrderTicket < ApplicationRecord

  belongs_to :order
  belongs_to :event_ticket
  belongs_to :ticket

  has_many :tickets, through: :orders

end

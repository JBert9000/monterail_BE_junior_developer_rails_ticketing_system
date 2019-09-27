class Ticket < ApplicationRecord

  has_many :event_tickets
  has_many :events, through: :event_tickets
  has_many :order_tickets

end

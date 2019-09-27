class EventTicket < ApplicationRecord
  belongs_to :ticket
  belongs_to :event
end

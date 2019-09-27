class Event < ApplicationRecord

  validates :name, presence: true

  has_many :event_tickets
  has_many :tickets, through: :event_tickets

  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true

end

class Event < ApplicationRecord

  has_many :event_tickets
  has_many :tickets, through: :event_tickets

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true

end

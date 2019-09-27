class Order < ApplicationRecord

  has_many :tickets, class_name: 'OrderTicket'

end

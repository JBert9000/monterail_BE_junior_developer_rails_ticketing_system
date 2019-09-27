# README

* Please feel free to clone this repo and take a look at it on your local machine.

* I wanted to upload to Heroku, but my version of Ruby is too old for it. This is due to the fact that I am working with OSX 10.9.5 still because I am working on an older machine.

* The way I approached this assignment was to build the models first. I created a relational database that connected my events with my tickets and then again into event_tickets. event_tickets and tickets could be seen by my order and order_ticket models. This was necessary to include the tickets into the shopping_cart model.

* The shopping_cart model creates a unique token for the session that the user is on. This token is then used in the current_cart method in the application controller. This is then supposed to display the cart and all tickets in it.

* I didn't get everything working properly, but the main idea is there. If I could get my database associations correct, this would work excellent and I would have more options to test my code.

* I filled the data with dummy data from the Faker gem and used random numbers for the date and time columns.

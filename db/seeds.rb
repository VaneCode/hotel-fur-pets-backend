# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "aron")
Hotel.create(name: "The Barkley Pet Hotel", location: "United States", rating: 5, price:50, photo: "https://s3-media0.fl.yelpcdn.com/bphoto/hVAI9UstNJeFHyNggdppaQ/348s.jpg", description: "The hotel is equipped with features such as indoor dog pools and cabanas, and bright, airy pool-side suites with spacious floor plans. The suites and play areas are built with specialised materials and technologies to reduce elements of stress and noise that tend to disturb pets.")
Hotel.create(name: "Westlodge Cattery", location: "Cambridgeshire, England", rating: 3, price: 28, photo: "https://www.pedigreepens.co.uk/wp-content/uploads/2011/12/Westlodge-Sleepl.jpg", description: "the Westlodge Cattery specializes in creating a happy home away from home for your feline friend. Their VIC (Very Important Cat) suites feature themed rooms, panoramic views and luxurious bedding." )
Hotel.create(name: "Hounds Lounge", location: "Arkansas, United States", rating: 4, price: 39.99, photo: "https://www.houndslounge.com/wp-content/uploads/2019/05/Owner-Mandy-holding-clients-pet-at-front-desk.jpg", description: "Overnight stays are full of fun at Hounds Lounge. All furry guests get their own private luxury suites, complete with fresh food and water bowls, and a very trendy raised bed!")
Hotel.create(name: "The Wags Club", location: "Los Angeles, United State", rating: 5, price: 45, photo: "https://s3-media0.fl.yelpcdn.com/bphoto/NOQ6FW6GqCekXSrLHPpBeA/348s.jpg", description: "Doggie guests are in excellent hands with the club’s dog valets, who will supervise, feed, walk and play with each dog that stays here. When it’s time for bed, they will rest comfortably on plush bedding in one of the peaceful guest quarters.")
Hotel.create(name:"Central Park Pet Retreat", location: "Salt Lake City, United State", rating: 5, price: 45.90 )
Booking.create(checking_in: "20-04-2021", checking_out: "25-04-2021", user_id: 1, hotel_id:1, animal_type: "dog", animal_name: "max" )
Booking.create(checking_in: "30-04-2021", checking_out: "15-05-2021", user_id: 1, hotel_id:2, animal_type: "cat", animal_name: "ash" )
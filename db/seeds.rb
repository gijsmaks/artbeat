# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Artist.destroy_all
Favorite.destroy_all
ViewingLocation.destroy_all

ed = User.create(username: 'Edward', email: 'ed@gmail.com', password: '123456'),
giis = User.create(username: 'Giis', email: 'giis@gmail.com', password: '123456'),
ben = User.create(username: 'Ben', email: 'ben@gmail.com', password: '123456'),
cristos = User.create(username: 'Cristos', email: 'cristos@gmail.com', password: '123456')

puts User.count

picasso = Artist.create(name: "Picasso", bio: "Modern artist")
le_louvre = ViewingLocation.create(name: "Le Louvre", address: "Paris")
monalisa = Artwork.create(viewing_location: le_louvre, artist: picasso, photo: URI('https://images.unsplash.com/photo-1499781350541-7783f6c6a0c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2230&q=80'), title: 'yo yo' , date_of_creation: '12/9/19', description: 'awesome')

User.all.each do |user|
  favorite = Favorite.create(user: user, artwork: monalisa)
end






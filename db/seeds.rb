# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artist.destroy_all
Favorite.destroy_all
ViewingLocation.destroy_all

# Test

ed = User.create(username: 'Edward', email: 'ed@gmail.com', password: '123456'),
gijs = User.create(username: 'Gijs', email: 'gijs@gmail.com', password: '123456'),
ben = User.create(username: 'Ben', email: 'ben@gmail.com', password: '123456'),
christos = User.create(username: 'Christos', email: 'christos@gmail.com', password: '123456')

picasso = Artist.create(name: "Picasso", bio: "Modern artist")
le_louvre = ViewingLocation.create(name: "Le Louvre", address: "Paris")
monalisa = Artwork.create(viewing_location: le_louvre, artist: picasso, photo: URI('https://images.unsplash.com/photo-1499781350541-7783f6c6a0c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2230&q=80'), title: 'yo yo' , date_of_creation: '12/9/19', description: 'awesome')

User.all.each do |user|
  favorite = Favorite.create(user: user, artwork: monalisa)
end

Artwork.create!(viewing_location: le_louvre, title: 'hello world', artist: picasso, photo: URI("https://images.unsplash.com/photo-1541680670548-88e8cd23c0f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"))
sleep(3)
Artwork.create!(viewing_location: le_louvre, title: 'hello world', artist: picasso, photo: URI("https://images.unsplash.com/photo-1494236536165-dab4d859818b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"))
sleep(3)
Artwork.create!(viewing_location: le_louvre, title: 'hello world', artist: picasso, photo: URI("https://images.unsplash.com/photo-1501181726133-750ba3cf73c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"))
sleep(3)
Artwork.create!(viewing_location: le_louvre, title: 'hello world', artist: picasso, photo: URI("https://images.unsplash.com/photo-1551732998-9573f695fdbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"))
sleep(3)
Artwork.create!(viewing_location: le_louvre, title: 'hello world', artist: picasso, photo: URI("https://images.unsplash.com/photo-1552084117-56a987666449?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"))
sleep(3)
Artwork.create!(viewing_location: le_louvre, title: 'hello world', artist: picasso, photo: URI("https://images.unsplash.com/photo-1508341421810-36b8fc06075b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"))








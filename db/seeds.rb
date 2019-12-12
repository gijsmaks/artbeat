# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artist.destroy_all
ViewingLocation.destroy_all

# Test

# user
ed = User.create(username: 'Edward', email: 'ed@gmail.com', password: '123456'),
gijs = User.create(username: 'Gijs', email: 'gijs@gmail.com', password: '123456'),
ben = User.create(username: 'Ben', email: 'ben@gmail.com', password: '123456'),
christos = User.create(username: 'Christos', email: 'christos@gmail.com', password: '123456')

# artist
picasso = Artist.create(name: "Picasso", bio: "Old artist")
basquiat = Artist.create(name: "Jean-Michel Basquiat", bio: "Weird artist")
lichtenstein = Artist.create(name: "Roy Lichtenstein", bio: "Modern artist")
banksy = Artist.create(name: "Banksy", bio: "New artist")
warhol = Artist.create(name: "Andy Warhol", bio: "Modern artist")
leonardo = Artist.create(name: "Leonardo da Vinci", bio: "Old artist")

#location
le_louvre = ViewingLocation.create(name: "Le Louvre", address: "Paris")

# artwork
monalisa = Artwork.create!(viewing_location: le_louvre, title: 'Mona Lisa', artist: leonardo, photo: URI('https://images.unsplash.com/photo-1523554888454-84137e72c3ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80'), date_of_creation: '12/9/19', description: 'awesome')
soup = Artwork.create!(viewing_location: le_louvre, title: 'Tomato beef noudle', artist: warhol, photo: URI("https://images.unsplash.com/photo-1541680670548-88e8cd23c0f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '13/9/19', description: 'very good')
flexible = Artwork.create!(viewing_location: le_louvre, title: 'Flexible', artist: basquiat, photo: URI("https://images.unsplash.com/photo-1494236536165-dab4d859818b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '14/9/19', description: 'awesome')
head = Artwork.create!(viewing_location: le_louvre, title: 'Modern head', artist: lichtenstein, photo: URI("https://images.unsplash.com/photo-1501181726133-750ba3cf73c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '15/9/19', description: 'awesome')
think = Artwork.create!(viewing_location: le_louvre, title: 'Think tank', artist: banksy, photo: URI("https://images.unsplash.com/photo-1551732998-9573f695fdbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '16/9/19', description: 'awesome')
war = Artwork.create!(viewing_location: le_louvre, title: 'War', artist: warhol, photo: URI("https://images.unsplash.com/photo-1552084117-56a987666449?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '17/9/19', description: 'awesome')
beret = Artwork.create!(viewing_location: le_louvre, title: 'Lover in Beret', artist: picasso, photo: URI("https://images.unsplash.com/photo-1508341421810-36b8fc06075b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '18/9/19', description: 'awesome')

# favorite
favorite = Favorite.create(user: ben, artwork: monalisa)

# comment
Comment.create!(user: gijs, artwork: monalisa, content: "Love this art")
Comment.create!(user: ben, artwork: monalisa, content: "Wow nice")
Comment.create!(user: ben, artwork: monalisa, content: "Beautiful")

Comment.create!(user: ben, artwork: flexible, content: "Love this art")
Comment.create!(user: gijs, artwork: flexible, content: "Wow nice")
Comment.create!(user: ben, artwork: flexible, content: "Beautiful")

Comment.create!(user: ben, artwork: soup, content: "Love this art")
Comment.create!(user: ben, artwork: soup, content: "Wow nice")
Comment.create!(user: gijs, artwork: soup, content: "Beautiful")

puts Comment.count

a = SavedArtwork.create(user: ben, artwork: beret, tag: "Paris")









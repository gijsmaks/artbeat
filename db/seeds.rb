# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all
ViewingLocation.destroy_all
Artist.destroy_all
User.destroy_all
SavedArtwork.destroy_all

# Test

# user
ed = User.create(username: 'Edward', email: 'ed@gmail.com', password: '123456'),
gijs = User.create(username: 'Gijs', email: 'gijs@gmail.com', password: '123456'),
ben = User.create(username: 'Ben', email: 'ben@gmail.com', password: '123456'),
christos = User.create(username: 'Christos', email: 'christos@gmail.com', password: '123456')

# # artist
# picasso = Artist.create(name: "Picasso", bio: "Old artist")
# basquiat = Artist.create(name: "Jean-Michel Basquiat", bio: "Weird artist")
# lichtenstein = Artist.create(name: "Roy Lichtenstein", bio: "Modern artist")
# banksy = Artist.create(name: "Banksy", bio: "New artist")
# warhol = Artist.create(name: "Andy Warhol", bio: "Modern artist")
# leonardo = Artist.create(name: "Leonardo da Vinci", bio: "Old artist")

# #location
# le_louvre = ViewingLocation.create(name: "Le Louvre", address: "Paris")

# # artwork
# monalisa = Artwork.create!(viewing_location: le_louvre, title: 'Mona Lisa', artist: leonardo, photo: URI('https://images.unsplash.com/photo-1523554888454-84137e72c3ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80'), date_of_creation: '12/9/19', description: 'awesome')
# soup = Artwork.create!(viewing_location: le_louvre, title: 'Tomato beef noudle', artist: warhol, photo: URI("https://images.unsplash.com/photo-1541680670548-88e8cd23c0f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '13/9/19', description: 'very good')
# flexible = Artwork.create!(viewing_location: le_louvre, title: 'Flexible', artist: basquiat, photo: URI("https://images.unsplash.com/photo-1494236536165-dab4d859818b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '14/9/19', description: 'awesome')
# head = Artwork.create!(viewing_location: le_louvre, title: 'Modern head', artist: lichtenstein, photo: URI("https://images.unsplash.com/photo-1501181726133-750ba3cf73c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '15/9/19', description: 'awesome')
# think = Artwork.create!(viewing_location: le_louvre, title: 'Think tank', artist: banksy, photo: URI("https://images.unsplash.com/photo-1551732998-9573f695fdbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '16/9/19', description: 'awesome')
# war = Artwork.create!(viewing_location: le_louvre, title: 'War', artist: warhol, photo: URI("https://images.unsplash.com/photo-1552084117-56a987666449?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '17/9/19', description: 'awesome')
# beret = Artwork.create!(viewing_location: le_louvre, title: 'Lover in Beret', artist: picasso, photo: URI("https://images.unsplash.com/photo-1508341421810-36b8fc06075b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '18/9/19', description: 'awesome')

# # favorite
# favorite = Favorite.create(user: ben, artwork: monalisa)

# # comment
# Comment.create!(user: gijs, artwork: monalisa, content: "Love this art")
# Comment.create!(user: ben, artwork: monalisa, content: "Wow nice")
# Comment.create!(user: ben, artwork: monalisa, content: "Beautiful")

# Comment.create!(user: ben, artwork: flexible, content: "Love this art")
# Comment.create!(user: gijs, artwork: flexible, content: "Wow nice")
# Comment.create!(user: ben, artwork: flexible, content: "Beautiful")

# Comment.create!(user: ben, artwork: soup, content: "Love this art")
# Comment.create!(user: ben, artwork: soup, content: "Wow nice")
# Comment.create!(user: gijs, artwork: soup, content: "Beautiful")

# puts Comment.count


require 'net/http'
require 'json'
require 'open-uri'

client_id = 'f0f4621cb4d96bb56038'
client_secret = '5eb9618233d99e41a420164f13ceeb44'

api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
xapp_token = JSON.parse(response.body)['token']

api = Hyperclient.new('https://api.artsy.net/api') do |api|
  api.headers['Accept'] = 'application/vnd.artsy-v2+json'
  api.headers['X-Xapp-Token'] = xapp_token
  api.connection(default: false) do |conn|
    conn.use FaradayMiddleware::FollowRedirects
    conn.use Faraday::Response::RaiseError
    conn.request :json
    conn.response :json, content_type: /\bjson$/
    conn.adapter :net_http
  end
end

artworks = api.artworks(size: 100)

def to_img(api_data)
  string = api_data._links.image.to_s
  array = string.split('.')
  if api_data.image_versions.include?('large')
    array[-2] = array[-2] + 'large'
  else
    array[-2] = array[-2] + api_data.image_versions.first
  end
  array.join('.')
end

artworks.each do |artwork|

if !artwork.collecting_institution.nil? && !artwork._links.artists.first.nil? && !artwork.title.nil? && !artwork.date.nil? && !artwork.collecting_institution.nil? && !artwork.medium.nil?

    # p artwork

    viewing_location = ViewingLocation.create!(name: artwork.collecting_institution)
    artist = Artist.create!(name: artwork._links.artists.first.name, bio: artwork._links.artists.first.biography)

    new_artwork = Artwork.create!(
      title: artwork.title,
      viewing_location: viewing_location,
      artist: artist,
      photo: to_img(artwork),
      date_of_creation: artwork.date,
      description: artwork.medium,
    )

    puts "title: #{new_artwork.title} - name: #{artist.name} - location: #{viewing_location.name} - date: #{artwork.date} - url: #{to_img(artwork)} - medium: #{artwork.medium}"
  end
end

puts "created #{Artwork.count} artworks"

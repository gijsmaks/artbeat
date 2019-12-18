# frozen_literal_string: true

# Object to match uploaded images to already uploaded images
class ArtMatcher
  attr_reader :artwork, :matcher
  def initialize(artwork)
    @artwork = artwork
    @matcher = Imatcher::Matcher.new threshold: 0.05
  end

  def call
    Artwork.all.find do |existing_artwork|
      artwork_one_path = Rails.root.join('storage/artwork_1.png')
      artwork_two_path = Rails.root.join('storage/artwork_2.png')

      system "curl #{existing_artwork.photo.url} > #{artwork_one_path}"
      system "curl #{artwork.photo.url} > #{artwork_two_path}"
      begin
        matcher.compare(
          artwork_one_path,
          artwork_two_path
        )
      rescue Imatcher::SizesMismatchError
        next
      end
      system "rm -rf #{artwork_one_path}"
      system "rm -rf #{artwork_two_path}"
    end
  end
end

# On image upload, save their pHash value in the DB.
#

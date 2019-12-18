# frozen_literal_string: true

# Object to match uploaded images to already uploaded images
class ArtMatcher
  attr_reader :artwork, :matcher
  def initialize(artwork)
    @artwork = artwork
    @matcher = Imatcher::Matcher.new threshold: 0.05
  end

  def call
    artwork_one_path = Rails.root.join('storage/artwork_1.png')
    system "curl #{artwork.photo.url} > #{artwork_one_path}"
    artwork_two_path = Rails.root.join('storage/artwork_2.png')

    found_artwork = Artwork.all.find do |existing_artwork|
      system "curl #{existing_artwork.photo.url} > #{artwork_two_path}"
      begin
        matcher.compare(
          artwork_one_path,
          artwork_two_path
        )
      rescue Imatcher::SizesMismatchError
        next
      end
      system "rm -rf #{artwork_two_path}"
    end
    system "rm -rf #{artwork_one_path}"
    found_artwork
  end

  # def test
  #   artwork_one_path = Rails.root.join('storage/test.png')
  #   artwork_two_path = Rails.root.join('storage/artwork_2.png')

  #   Artwork.all.find do |existing_artwork|
  #     system "curl #{artwork.photo.url} > #{artwork_two_path}"
  #     begin
  #       matcher.compare(
  #         artwork_one_path,
  #         artwork_two_path
  #       )
  #     rescue Imatcher::SizesMismatchError
  #       next
  #     end
  #     system "rm -rf #{artwork_one_path}"
  #     system "rm -rf #{artwork_two_path}"
  #   end
  # end
end

# On image upload, save their pHash value in the DB.
#

# 1 2 4 8 16 32 64 128 256 512 1024 2048
# 1 0 1 1 1 1  1 1
# 01 01 010101

# 01010101 === 111001001 ?

# rgb(255, 0, 0)

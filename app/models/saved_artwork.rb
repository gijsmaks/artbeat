class SavedArtwork < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
end

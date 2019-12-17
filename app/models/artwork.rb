class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :viewing_location
  has_many :artwork_categorys
  has_many :categorys, through: :artwork_categorys
  has_many :favorites
  has_many :saved_artworks, dependent: :destroy
  has_many :comments, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by,
    against: [:title, :description],
    associated_against: {
      artist: [:name],
      viewing_location: [:name, :address]
    },
    using: {
      tsearch: { prefix: true }
    }
end

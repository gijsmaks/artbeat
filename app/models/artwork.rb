class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :viewing_location
  has_many :artwork_categorys
  has_many :categorys, through: :artwork_categorys
  has_many :favorites, dependent: :destroy
  has_many :saves
  has_many :comments

  include PgSearch::Model
  pg_search_scope :search_by,
    against: [:title, :description],
    associated_against: {
      artist: [:name],
      viewing_location: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end

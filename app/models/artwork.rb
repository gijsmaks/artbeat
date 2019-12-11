class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :viewing_location
  has_many :artwork_categorys
  has_many :categorys, through: :artwork_categorys
  has_many :favorites, dependent: :destroy
  has_many :saved_artworks
  has_many :comments
end

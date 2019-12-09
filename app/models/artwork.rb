class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :viewing_location
  has_many :artwork_categorys
  has_many :categorys, through: :artwork_categorys
  has_many :favorites
  has_many :saves
  has_many :comments
end

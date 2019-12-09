class Category < ApplicationRecord
  has_many :artwork_categorys
  has_many :artworks, through: :artwork_categorys
end

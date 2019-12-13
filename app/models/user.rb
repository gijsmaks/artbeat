class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :saved_artworks, dependent: :destroy

  def favorited?(artwork)
    favorites.find_by(artwork_id: artwork.id)
  end

  def saved?(artwork)
    saved_artworks.find_by(artwork_id: artwork.id)
  end

  def saved_artworks_for(tag)
    saved_artworks.where(tag: tag).map(&:artwork)
  end
end

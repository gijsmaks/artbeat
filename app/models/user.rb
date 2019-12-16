class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :saved_artworks, dependent: :destroy

  after_create :add_favorites_to_user

  def favorited?(viewing_location)
    favorites.find_by(viewing_location_id: viewing_location.id)
  end

  def saved?(artwork)
    saved_artworks.find_by(artwork_id: artwork.id)
  end

  def saved_artworks_for(tag)
    saved_artworks.where(tag: tag).map(&:artwork)
  end

  private

  def add_favorites_to_user
    favorites = SavedArtwork.new(user_id: self.id, tag: "Favorites")
    favorites.save(validate: false)
  end
end

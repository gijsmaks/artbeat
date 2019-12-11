class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :saves
  has_many :comments, dependent: :destroy

  def favorited?(artwork)
    favorites.find_by(artwork_id: artwork.id)
  end
end

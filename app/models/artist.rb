class Artist < ApplicationRecord
  has_many :artworks, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end

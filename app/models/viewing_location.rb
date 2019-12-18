class ViewingLocation < ApplicationRecord
  has_many :artworks
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :latitude, presence: true

  # after_save :destroy_if_no_location

  # def destroy_if_no_location
  #   destroy if latitude.nil?
  # end
end

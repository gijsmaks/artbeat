class ViewingLocation < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :artworks
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :latitude, presence: true

  # after_save :destroy_if_no_location

  # def destroy_if_no_location
  #   destroy if latitude.nil?
  # end
end

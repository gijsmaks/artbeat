class ViewingLocation < ApplicationRecord
  has_many :artworks

  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?
  # after_save :destroy_if_no_location

  # def destroy_if_no_location
  #   destroy if latitude.nil?
  # end
end

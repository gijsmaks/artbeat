class ViewingLocation < ApplicationRecord
  has_many :artworks

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def index
  #   @viewing_locations = ViewingLocation.geocoded

  #   @markers = @viewing_locations.map do |v|
  #     {
  #       lat: v.latitude,
  #       lng: v.longitude
  #     }
  #   end
  # end
end

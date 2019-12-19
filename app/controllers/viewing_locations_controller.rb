class ViewingLocationsController < ApplicationController
  # def index
  #   @viewing_locations = ViewingLocation.geocoded

  #   @markers = @viewing_locations.map do |v|
  #     {
  #       lat: v.latitude,
  #       lng: v.longitude
  #     }
  #   end
  # end

  def show
    @viewing_location = ViewingLocation.find(params[:id])
    @artworks = Artwork.where(viewing_location_id: @viewing_location.id)
    @markers = [{
      lat: @viewing_location.latitude,
      lng: @viewing_location.longitude
    }]
  end
end

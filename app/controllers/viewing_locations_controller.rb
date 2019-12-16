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
    @artworks = Artwork.where() #TODO
  end
end

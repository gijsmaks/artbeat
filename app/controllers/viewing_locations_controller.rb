class ViewingLocationsController < ApplicationController
  def show
    @viewing_location = ViewingLocation.find(params[:id])
    @artworks = Artwork.where(viewing_location_id: @viewing_location.id)
  end
end

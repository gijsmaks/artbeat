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
      lng: @viewing_location.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { viewing_location: @viewing_location }),
      image_url: helpers.asset_path('artbeat-map-marker.png')
    }]
  end
end

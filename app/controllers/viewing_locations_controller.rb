class ViewingLocationsController < ApplicationController
  def show
    @viewing_location = ViewingLocation.find(params[:id])
    @artworks = Artwork.where() #TODO
  end
end

class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    if params[:search][:location]
      @location = ViewingLocation.find_by(name: params[:search][:location])
      @location_id = @location.id if @location
      @artworks = Artwork.where(viewing_location_id: @location_id)
    else
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
  end
end

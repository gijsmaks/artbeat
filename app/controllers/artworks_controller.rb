class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    # return unless params[:search]
    # return unless params[:search][:location]

    # @location = ViewingLocation.find_by(name: params[:search][:location])
    # @location_id = @location.id if @location
    # @artworks = Artwork.where(viewing_location_id: @location_id)
    if params[:search].present?
      @artworks = Artwork.search_by(params[:search])
    else
      @artworks = Artwork.all
    end

    # Artwork.search_by("picasso").first

  end

  def show
    @artwork = Artwork.find(params[:id])
  end
end

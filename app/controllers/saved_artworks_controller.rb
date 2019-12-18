class SavedArtworksController < ApplicationController
  def show
    @tag = find_tag
    @saved_artworks = current_user.saved_artworks.where(tag: find_tag)
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @saved_artwork = SavedArtwork.new(saved_artwork_params)
    @saved_artwork.user = current_user
    @saved_artwork.artwork = @artwork
    if @saved_artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  private

  def find_tag
    params[:tag]
  end

  def saved_artwork_params
    params.require(:saved_artwork).permit(:tag)
  end
end

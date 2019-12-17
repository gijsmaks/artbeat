class ArtworksController < ApplicationController
  def index
    # @artworks = Artwork.all
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
    # Create markers here

    @markers = @artworks.map do |artwork|
      {
        lat: artwork.viewing_location.latitude,
        lng: artwork.viewing_location.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { artworks: artwork })
      }
    end

  end

  def show
    @artwork = Artwork.find(params[:id])
    @tags = get_tags
    @comments = @artwork.comments
    @comment = Comment.new
    @saved_artwork = SavedArtwork.new
  end

  def new
  end

  def create
  end

  def edit
    # TODO
  end

  # def update
  #   # TODO
  # end

  # def destroy
  #   id = params[:id]
  #   comment = Comment.find(id)
  #   comment.destroy
  #   redirect_to "/artwork"
  # end

  private

  def get_tags
    current_user.saved_artworks.pluck(:tag).uniq
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end

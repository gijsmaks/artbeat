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
    viewing_locations = @artworks.map { |artwork| artwork.viewing_location }.uniq
    @markers = viewing_locations.map do |viewing_location|
      {
        lat: viewing_location.latitude,
        lng: viewing_location.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { viewing_location: viewing_location })
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
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save(validate: false)
      match_artwork
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
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

  def match_artwork
    @found_artwork = ArtMatcher.new(@artwork.reload).call
    if @found_artwork
      @artwork.destroy
      @artwork = @found_artwork
      flash[:notice] = "We recognized this piece! It's #{@found_artwork.title}"
    else
      flash[:notice] = "This is our first version of this piece!"
    end
  end

  def get_tags
    current_user.saved_artworks.pluck(:tag).uniq
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:photo)
  end
end

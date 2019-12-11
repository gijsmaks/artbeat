class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
    @comments = @artwork.comments
    @comment = Comment.new
  end

  def new
  end

  def create
  end

  def edit
    # TODO
  end

  def update
    # TODO
  end

  # def destroy
  #   id = params[:id]
  #   comment = Comment.find(id)
  #   comment.destroy
  #   redirect_to "/artwork"
  # end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end

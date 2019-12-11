class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :set_artwork, only: [:create]

  def create
    @comment = Comment.new(comment_params)
    @comment.artwork_id = @artwork.id
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to artwork_path(@artwork)
    else
      @comments = @artwork.comments
      render 'artworks/show'
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to artwork_path(@comment.artwork_id)
    else
      @comments = @artwork.comments
      render 'artworks/show'
    end
  end

  def destroy
    @comment.destroy
    redirect_to artwork_path(@comment.artwork_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_artwork
    @artwork = Artwork.find(params[:artwork_id])
  end
end

class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @favorite = Favorite.new(user_id: current_user.id, artwork_id: params[:artwork_id])
    @favorite.save
    redirect_to artwork_path(@artwork)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @favorite = Favorite.find_by(user_id: current_user, artwork_id: @artwork)
    @favorite.destroy
    redirect_to artwork_path(@artwork)
  end
end

class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @viewing_location = ViewingLocation.find(params[:viewing_location_id])
    @favorite = Favorite.new(user: current_user, viewing_location: @viewing_location)
    @favorite.save
    redirect_to viewing_location_path(@viewing_location)
  end

  def destroy
    @viewing_location = ViewingLocation.find(params[:id])
    @favorite = Favorite.find_by(user: current_user, viewing_location: @viewing_location)
    @favorite.destroy
    redirect_to viewing_location_path(@viewing_location)
  end
end

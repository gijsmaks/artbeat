class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    # TODO
  end

  def destroy
    # TODO
  end
end

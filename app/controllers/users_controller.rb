class UsersController < ApplicationController
  def show
    @favorites = current_user.favorites
    @saved_artworks = current_user.saved_artworks
  end
end

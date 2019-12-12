class UsersController < ApplicationController
  def show
    @favorites = current_user.favorites
    @saved_artworks = current_user.saved_artworks
    @tags = get_tags
  end

  private

  def get_tags
    current_user.saved_artworks.pluck(:tag).uniq
  end
end

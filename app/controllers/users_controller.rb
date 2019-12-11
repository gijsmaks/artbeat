class UsersController < ApplicationController
  def show
    @favorites = current_user.favorites
    # @saves = current_user.saves
  end
end

class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :viewing_location
end

require 'test_helper'

class ViewingLocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get viewing_locations_show_url
    assert_response :success
  end

end

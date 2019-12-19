require 'test_helper'

class RestaurantMapControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get restaurant_map_map_url
    assert_response :success
  end

end

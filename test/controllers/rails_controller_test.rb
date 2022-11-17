require "test_helper"

class RailsControllerTest < ActionDispatch::IntegrationTest
  test "should get flats" do
    get rails_flats_url
    assert_response :success
  end
end

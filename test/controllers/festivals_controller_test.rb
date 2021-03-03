require 'test_helper'

class FestivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get festivals_new_url
    assert_response :success
  end

  test "should get create" do
    get festivals_create_url
    assert_response :success
  end

end

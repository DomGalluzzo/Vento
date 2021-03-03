require 'test_helper'

class PublicInjuriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_injuries_new_url
    assert_response :success
  end

  test "should get create" do
    get public_injuries_create_url
    assert_response :success
  end

end

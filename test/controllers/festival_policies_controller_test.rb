require 'test_helper'

class FestivalPoliciesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get festival_policies_new_url
    assert_response :success
  end

  test "should get create" do
    get festival_policies_create_url
    assert_response :success
  end

end

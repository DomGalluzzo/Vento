require 'test_helper'

class CancellationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cancellations_new_url
    assert_response :success
  end

  test "should get create" do
    get cancellations_create_url
    assert_response :success
  end

end

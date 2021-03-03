require 'test_helper'

class InsuranceCoveragesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get insurance_coverages_index_url
    assert_response :success
  end

end

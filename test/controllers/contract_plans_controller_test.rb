require 'test_helper'

class ContractPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contract_plans_new_url
    assert_response :success
  end

  test "should get create" do
    get contract_plans_create_url
    assert_response :success
  end

end

require "test_helper"

class Users::PartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_parts_index_url
    assert_response :success
  end
end

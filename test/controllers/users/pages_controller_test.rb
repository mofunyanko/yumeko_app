require "test_helper"

class Users::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_pages_index_url
    assert_response :success
  end
end

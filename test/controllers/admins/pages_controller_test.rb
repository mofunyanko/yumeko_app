require "test_helper"

class Admins::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_pages_index_url
    assert_response :success
  end
end

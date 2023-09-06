require "test_helper"

class SelectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get selections_index_url
    assert_response :success
  end
end

require "test_helper"

class ArieControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get arie_show_url
    assert_response :success
  end
end

require "test_helper"

class TauruControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tauru_show_url
    assert_response :success
  end
end

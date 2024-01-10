require "test_helper"

class AquariuControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get aquariu_show_url
    assert_response :success
  end
end

require "test_helper"

class ScorpioControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get scorpio_show_url
    assert_response :success
  end
end

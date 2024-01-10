require "test_helper"

class GeminiControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get gemini_show_url
    assert_response :success
  end
end

require "test_helper"

class LogicControllerTest < ActionDispatch::IntegrationTest
  test "should get enigma" do
    get logic_enigma_url
    assert_response :success
  end
end

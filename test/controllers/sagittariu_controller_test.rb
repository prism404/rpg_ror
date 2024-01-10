require "test_helper"

class SagittariuControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sagittariu_show_url
    assert_response :success
  end
end

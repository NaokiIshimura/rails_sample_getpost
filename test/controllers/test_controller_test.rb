require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get data" do
    get test_data_url
    assert_response :success
  end

end

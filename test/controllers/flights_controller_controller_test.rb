require 'test_helper'

class FlightsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flights_controller_index_url
    assert_response :success
  end

end

require 'test_helper'

class FlatBookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flat_bookings_index_url
    assert_response :success
  end

end

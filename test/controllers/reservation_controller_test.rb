require "test_helper"

class ReservationControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get reservation_test_url
    assert_response :success
  end
end

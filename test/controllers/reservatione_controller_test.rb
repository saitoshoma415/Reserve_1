require "test_helper"

class ReservationeControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get reservatione_test_url
    assert_response :success
  end
end

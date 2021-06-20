require "test_helper"

class DescriptionOfWorkControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get description_of_work_test_url
    assert_response :success
  end
end

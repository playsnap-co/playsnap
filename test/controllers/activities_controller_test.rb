require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    lion = activities(:lion)
    get activity_url(lion)
    assert_response :found
  end
end

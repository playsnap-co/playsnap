require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get activities_new_url
    assert_response :success
  end
end

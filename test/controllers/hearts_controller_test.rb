require "test_helper"

class HeartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heart = hearts(:one)
  end

  test "should get index" do
    get hearts_url
    assert_response :success
  end

  test "should get new" do
    get new_heart_url
    assert_response :success
  end

  test "should create heart" do
    assert_difference("Heart.count") do
      post hearts_url, params: { heart: {  } }
    end

    assert_redirected_to heart_url(Heart.last)
  end

  test "should show heart" do
    get heart_url(@heart)
    assert_response :success
  end

  test "should get edit" do
    get edit_heart_url(@heart)
    assert_response :success
  end

  test "should update heart" do
    patch heart_url(@heart), params: { heart: {  } }
    assert_redirected_to heart_url(@heart)
  end

  test "should destroy heart" do
    assert_difference("Heart.count", -1) do
      delete heart_url(@heart)
    end

    assert_redirected_to hearts_url
  end
end

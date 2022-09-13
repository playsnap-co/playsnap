require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    george = users(:george)
    login_as george
    @review = reviews(:lion)
    @params = {
      rating: 5,
      content: "Feed the lion activity is the best for fine motor development"
    }
  end

  # test "should get index" do
  #   get reviews_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_review_url
  #   assert_response :success
  # end

  # test "should create review" do
  #   assert_difference("Review.count") { post reviews_url, params: @params }

  #   assert_redirected_to review_url(Review.last)
  # end

  # test "should show review" do
  #   get review_url(@review)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_review_url(@review)
  #   assert_response :success
  # end

  # test "should update review" do
  #   patch review_url(@review), params: @params
  #   assert_redirected_to review_url(@review)
  # end

  # test "should destroy review" do
  #   assert_difference("Review.count", -1) { delete review_url(@review) }

  #   assert_redirected_to reviews_url
  # end
end

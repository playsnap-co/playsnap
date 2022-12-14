require "application_system_test_case"

class ReviewsTest < ApplicationSystemTestCase
  setup do
    george = users(:george)
    login_as george
    @review = reviews(:lion)
    @lion = activities(:lion)
  end

  test "visiting the index" do
    visit activity_reviews_url(@lion)
    assert_selector "h1", text: "Reviews"
  end

  # test "should create review" do
  #   visit reviews_url
  #   click_on "New review"

  #   click_on "Create Review"

  #   assert_text "Review was successfully created"
  #   click_on "Back"
  # end

  # test "should update Review" do
  #   visit review_url(@review)
  #   click_on "Edit this review", match: :first

  #   click_on "Update Review"

  #   assert_text "Review was successfully updated"
  #   click_on "Back"
  # end

  # test "should destroy Review" do
  #   visit review_url(@review)
  #   click_on "Destroy this review", match: :first

  #   assert_text "Review was successfully destroyed"
  # end
end

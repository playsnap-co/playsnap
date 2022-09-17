require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit root_url

    assert_selector "video", class: "playsnap_video"
    assert_selector "h1", text: "Independent play activities with ANYTHING you have on hand, in a snap!"
  end

  test "visiting the user profile page" do
    george = users(:george)
    login_as george
    visit "/users/#{george.id}"

    assert_selector "h1", text: "Parent profile"
  end

  test "visiting the activity show page" do
    george = users(:george)
    lion = activities(:lion)
    login_as george
    visit "/activities/#{lion.id}"

    assert_selector "h1", text: "Explore"
  end
end

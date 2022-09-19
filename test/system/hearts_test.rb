require "application_system_test_case"

class HeartsTest < ApplicationSystemTestCase
  setup do
    @heart = hearts(:one)
  end

  test "visiting the index" do
    visit hearts_url
    assert_selector "h1", text: "Hearts"
  end

  test "should create heart" do
    visit hearts_url
    click_on "New heart"

    click_on "Create Heart"

    assert_text "Heart was successfully created"
    click_on "Back"
  end

  test "should update Heart" do
    visit heart_url(@heart)
    click_on "Edit this heart", match: :first

    click_on "Update Heart"

    assert_text "Heart was successfully updated"
    click_on "Back"
  end

  test "should destroy Heart" do
    visit heart_url(@heart)
    click_on "Destroy this heart", match: :first

    assert_text "Heart was successfully destroyed"
  end
end

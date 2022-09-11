require "application_system_test_case"

class WishlistsTest < ApplicationSystemTestCase
  setup do
    @wishlist = wishlists(:one)
  end

  test "visiting the index" do
    visit wishlists_url
    assert_selector "h1", text: "Wishlists"
  end

  test "should create wishlist" do
    visit wishlists_url
    click_on "New wishlist"

    click_on "Create Wishlist"

    assert_text "Wishlist was successfully created"
    click_on "Back"
  end

  test "should update Wishlist" do
    visit wishlist_url(@wishlist)
    click_on "Edit this wishlist", match: :first

    click_on "Update Wishlist"

    assert_text "Wishlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Wishlist" do
    visit wishlist_url(@wishlist)
    click_on "Destroy this wishlist", match: :first

    assert_text "Wishlist was successfully destroyed"
  end
end

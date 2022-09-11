require "test_helper"

class WishlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wishlist = wishlists(:one)
  end

  test "should get index" do
    get wishlists_url
    assert_response :success
  end

  test "should get new" do
    get new_wishlist_url
    assert_response :success
  end

  test "should create wishlist" do
    assert_difference("Wishlist.count") do
      post wishlists_url, params: { wishlist: {  } }
    end

    assert_redirected_to wishlist_url(Wishlist.last)
  end

  test "should show wishlist" do
    get wishlist_url(@wishlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_wishlist_url(@wishlist)
    assert_response :success
  end

  test "should update wishlist" do
    patch wishlist_url(@wishlist), params: { wishlist: {  } }
    assert_redirected_to wishlist_url(@wishlist)
  end

  test "should destroy wishlist" do
    assert_difference("Wishlist.count", -1) do
      delete wishlist_url(@wishlist)
    end

    assert_redirected_to wishlists_url
  end
end

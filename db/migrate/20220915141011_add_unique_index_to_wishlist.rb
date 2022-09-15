class AddUniqueIndexToWishlist < ActiveRecord::Migration[7.0]
  def change
    add_index :wishlists, [:activity_id, :user_id], unique: true
  end
end

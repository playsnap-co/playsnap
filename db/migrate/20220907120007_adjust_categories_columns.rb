class AdjustCategoriesColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :sort, :string, null: false
    remove_column :categories, :type
  end
end

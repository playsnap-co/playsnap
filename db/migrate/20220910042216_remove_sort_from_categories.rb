class RemoveSortFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :sort, :string
  end
end

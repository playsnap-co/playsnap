class ChangeObjectToItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :object, :string
    add_column :activities, :item, :string
  end
end

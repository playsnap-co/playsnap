class RemoveItemColumnFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :item, :string
  end
end

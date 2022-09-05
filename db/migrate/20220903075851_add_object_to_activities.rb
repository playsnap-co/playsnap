class AddObjectToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :object, :string
  end
end

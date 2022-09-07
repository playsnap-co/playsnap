class AdjustActivitiesAgeGroup < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :age_group, :string, null: false
  end
end

class AdjustActivitiesAgeGroup < ActiveRecord::Migration[7.0]
  def change
    remove_check_constraint :activities, name:"age_group_check"
    change_column :activities, :age_group, :string, null: false
  end
end

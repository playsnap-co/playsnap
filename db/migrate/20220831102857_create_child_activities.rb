class CreateChildActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :child_activities do |t|
      t.references :child, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end

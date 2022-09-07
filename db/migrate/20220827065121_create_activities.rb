class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.references :category, null: false, foreign_key: true
      t.string :image_url, null: false, default: ""
      t.string :video_url, null: true
      t.integer :age_group, null: false

      t.timestamps
    end

    # add_check_constraint :activities, "age_group > 0 AND age_group <= 3", name: "age_group_check"
  end
end

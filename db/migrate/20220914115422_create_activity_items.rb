class CreateActivityItems < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_items do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end

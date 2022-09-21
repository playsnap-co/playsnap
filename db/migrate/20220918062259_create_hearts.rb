class CreateHearts < ActiveRecord::Migration[7.0]
  def change
    create_table :hearts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end

    add_index :hearts, [:activity_id, :user_id], unique: true
  end
end

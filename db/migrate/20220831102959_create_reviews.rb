class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.integer :rating, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end

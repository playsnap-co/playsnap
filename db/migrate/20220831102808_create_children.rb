class CreateChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :children do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false, default: ""
      t.integer :age, null: false, default: 0
      t.string :gender, null: false

      t.timestamps
    end
  end
end

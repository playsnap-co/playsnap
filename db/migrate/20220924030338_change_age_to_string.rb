class ChangeAgeToString < ActiveRecord::Migration[7.0]
  def change
    remove_column :children, :age, :integer
    add_column :children, :age, :string
  end
end

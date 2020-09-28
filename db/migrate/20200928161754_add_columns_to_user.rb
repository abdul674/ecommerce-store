class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string, index: true
    add_column :users, :last_name, :string, index: true
    add_column :users, :role_id, :integer, index: true
    add_column :users, :category_id, :integer, index: true
  end
end

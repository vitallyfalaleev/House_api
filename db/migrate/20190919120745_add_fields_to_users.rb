class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :company, :string
    add_column :users, :avatar, :string
  end
end

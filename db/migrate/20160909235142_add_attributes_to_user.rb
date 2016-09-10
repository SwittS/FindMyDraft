class AddAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fullname, :string
    add_column :users, :phone_number, :string
    add_column :users, :file, :text
  end
end

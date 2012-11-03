class AddIndexToUsers < ActiveRecord::Migration
  def change
    add_index :users, :email, :unique => true
    add_index :users, :uid, :unique => true
    add_index :users, :apelido, :unique => true
  end
end

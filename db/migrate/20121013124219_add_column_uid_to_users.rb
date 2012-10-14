class AddColumnUidToUsers < ActiveRecord::Migration
  def self.up
		add_column :users, :uid, :integer, :limit => 11
 	end
 	def self.down
 		remove_column :users, :uid
	end
end

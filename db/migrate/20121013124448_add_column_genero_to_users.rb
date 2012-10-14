class AddColumnGeneroToUsers < ActiveRecord::Migration
 def self.up
		add_column :users, :genero, :string, :limit => 20
 	end
 	def self.down
 		remove_column :users, :genero
	end
end

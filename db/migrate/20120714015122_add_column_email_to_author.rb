class AddColumnEmailToAuthor < ActiveRecord::Migration
	def self.up
		add_column :authors, :email, :string, :limit => 50
	end
	def self.down
		remove_column :authors, :email
	end
end

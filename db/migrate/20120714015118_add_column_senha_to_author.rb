class AddColumnSenhaToAuthor < ActiveRecord::Migration
	def self.up
		add_column :authors, :senha, :string, :limit => 10
	end
	def self.down
		remove_column :authors, :senha
	end
end

class AddColumnDestaqueToArticles < ActiveRecord::Migration
	def self.up
		add_column :articles, :destaque ,"ENUM('S', 'N')"
	end 
	def self.down
		remove_column :articles, :destaque
	end
end

class AddColumnStatusToSuperHighlights < ActiveRecord::Migration
	def self.up
		add_column :super_highlights, :status ,"ENUM('S', 'N')"
	end 
	def self.down
		remove_column :super_highlights, :status
	end
end

class AddColumnStatusToDoubts < ActiveRecord::Migration
	def self.up
		add_column :doubts, :status ,"ENUM('S', 'N')"
	end 
	def self.down
		remove_column :doubts, :status
	end
end

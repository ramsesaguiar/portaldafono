class AddColumnStatusToDiscussions < ActiveRecord::Migration
  def self.up
		add_column :discussions, :status ,"ENUM('S', 'N')"
	end 
	def self.down
		remove_column :discussions, :status
	end
end

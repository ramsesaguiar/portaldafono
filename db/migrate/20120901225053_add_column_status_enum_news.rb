class AddColumnStatusEnumNews < ActiveRecord::Migration
  def self.up
		add_column :news, :status ,"ENUM('S', 'N')"
	end 
	def self.down
		remove_column :news, :status
	end
end

class AddColumnUrlImageToUsers < ActiveRecord::Migration
 	def self.up
		add_column :users, :url_image, :string, :limit => 255
 	end
 	def self.down
 		remove_column :users, :url_image
	end
end

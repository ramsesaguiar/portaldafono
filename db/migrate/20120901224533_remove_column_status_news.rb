class RemoveColumnStatusNews < ActiveRecord::Migration
 	 def up
    	remove_column :news, :status
      end
  	def down
    	add_column :news, :status ,"ENUM('S', 'N')"
  	end
end

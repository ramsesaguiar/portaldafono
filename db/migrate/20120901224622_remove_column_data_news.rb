class RemoveColumnDataNews < ActiveRecord::Migration
 def up
    	remove_column :news, :data
      end
  	def down
    	add_column :news, :data , :timestamp
  	end
end

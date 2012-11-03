class RemoveColumnImageArticles < ActiveRecord::Migration
 def self.up
    drop_attached_file :articles, :image
 end
 def self.down
     change_table :articles do |t|
      t.has_attached_file :image
    end
 end
end

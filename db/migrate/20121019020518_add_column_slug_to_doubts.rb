class AddColumnSlugToDoubts < ActiveRecord::Migration
  def change
   add_column :doubts, :slug, :string 
   add_index :doubts, :slug, unique: true
   end 
end

class RemoveDataFromArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :data
      end

  def down
    add_column :articles, :data, :string
  end
end

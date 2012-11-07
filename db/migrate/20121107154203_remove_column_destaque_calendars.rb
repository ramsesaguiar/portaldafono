class RemoveColumnDestaqueCalendars < ActiveRecord::Migration
  def up
  	remove_column :calendars, :destaque
  end

  def down
  	add_column :calendars, :destaque, :boolean
  end
end
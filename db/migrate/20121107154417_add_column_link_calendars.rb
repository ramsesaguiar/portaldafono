class AddColumnLinkCalendars < ActiveRecord::Migration
  def up
  	add_column :calendars, :link, :string
  end

  def down
  	remove_column :calendars, :link
  end
end
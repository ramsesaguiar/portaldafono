class ChangeColumnDataFormatDoubts < ActiveRecord::Migration
  def self.up
   change_column :doubts, :data_resposta, :date
  end

  def self.down
   change_column :doubts, :data_resposta, :date
  end
end

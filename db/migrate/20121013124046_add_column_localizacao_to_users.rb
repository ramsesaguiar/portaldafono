class AddColumnLocalizacaoToUsers < ActiveRecord::Migration
  	def self.up
		add_column :users, :localizacao, :string, :limit => 255
 	end
 	def self.down
 		remove_column :users, :localizacao
	end
end

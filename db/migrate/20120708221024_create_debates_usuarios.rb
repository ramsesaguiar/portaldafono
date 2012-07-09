class CreateDebatesUsuarios < ActiveRecord::Migration
  def change
    create_table :debates_usuarios do |t|
      t.integer :debate_id
      t.integer :usuario_id
      t.datetime :data_resposta
      t.integer :status

      t.timestamps
    end
  end
end

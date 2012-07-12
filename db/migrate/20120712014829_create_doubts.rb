class CreateDoubts < ActiveRecord::Migration
  def change
    create_table :doubts do |t|
      t.integer :usuario_id
      t.string :titulo
      t.text :texto
      t.integer :status
      t.integer :autor_responsavel_id
      t.text :resposta
      t.datetime :data_resposta

      t.timestamps
    end
  end
end

class CreateDuvidas < ActiveRecord::Migration
  def change
    create_table :duvidas do |t|
      t.integer :usuario_id
      t.string :titulo
      t.string :texto
      t.datetime :created
      t.integer :status
      t.integer :autor_responsavel_id
      t.string :resposta
      t.datetime :data_resposta

      t.timestamps
    end
  end
end

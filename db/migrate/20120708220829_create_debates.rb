class CreateDebates < ActiveRecord::Migration
  def change
    create_table :debates do |t|
      t.integer :autor_id
      t.string :titulo
      t.string :subtitulo
      t.string :texto
      t.date :data_inicio
      t.date :data_fim
      t.integer :status

      t.timestamps
    end
  end
end

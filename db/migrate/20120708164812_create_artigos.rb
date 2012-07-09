class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.integer :autor_id
      t.string :titulo
      t.string :subtitulo
      t.string :texto
      t.string :palavra_chave
      t.datetime :data

      t.timestamps
    end
  end
end

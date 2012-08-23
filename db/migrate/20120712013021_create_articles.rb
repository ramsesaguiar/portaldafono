class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :author_id
      t.string :titulo
      t.string :subtitulo
      t.text :texto
      t.text :palavras_chave
      t.datetime :data

      t.timestamps
    end
  end
end

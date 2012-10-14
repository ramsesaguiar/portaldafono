class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.integer :author_id
      t.string :nome_entrevistado
      t.text :texto

      t.timestamps
    end
  end
end

class CreateDiscussionUsers < ActiveRecord::Migration
  def change
    create_table :discussion_users do |t|
      t.integer :debate_id
      t.integer :usuario_id
      t.datetime :data_resposta
      t.integer :status
      t.text :resposta

      t.timestamps
    end
  end
end

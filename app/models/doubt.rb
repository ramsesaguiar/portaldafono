class Doubt < ActiveRecord::Base
  belongs_to :user , :foreign_key => 'usuario_id'
  belongs_to :author, :foreign_key => 'autor_responsavel_id'

end

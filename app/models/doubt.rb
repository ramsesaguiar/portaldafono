class Doubt < ActiveRecord::Base
  belongs_to :user , :foreign_key => 'usuario_id'
  belongs_to :author, :foreign_key => 'autor_responsavel_id'

   validates_presence_of :titulo,  :message => "para sua dúvida não pode estar vazio;"

end

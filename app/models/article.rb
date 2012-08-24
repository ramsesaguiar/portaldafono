#enconding UTF8
class Article < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :author_id, :titulo, :texto, :palavras_chave,  :message => "não pode estar vazio;"
end

#enconding UTF8
class Article < ActiveRecord::Base
  belongs_to :author
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_presence_of :author_id, :titulo, :texto, :palavras_chave,  :message => "não pode estar vazio;"

end

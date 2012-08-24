class News < ActiveRecord::Base
  belongs_to :author
  validates_presence_of  :titulo, :author_id, :texto, :message => "não pode estar vazio;"
end

class Discussion < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :author_id, :titulo, :texto, :data_inicio, :data_fim, :message => "não pode estar vazio;"
end

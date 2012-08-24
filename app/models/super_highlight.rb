class SuperHighlight < ActiveRecord::Base
   validates_presence_of :titulo, :subtitulo, :slug,  :data_ini, :data_fim,  :message => "não pode estar vazio;"
end

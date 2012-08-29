﻿class SuperHighlight < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_presence_of :titulo, :subtitulo, :slug,  :data_ini, :data_fim,  :message => "não pode estar vazio;"
end

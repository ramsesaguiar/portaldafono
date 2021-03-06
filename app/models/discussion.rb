﻿class Discussion < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :author_id, :titulo, :texto, :data_inicio, :data_fim, :status,  :message => "não pode estar vazio;"
  extend FriendlyId
  friendly_id :titulo, use: :slugged
end

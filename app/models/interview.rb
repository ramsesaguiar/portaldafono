#encoding: utf-8
class Interview < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nome_entrevistado, use: :slugged
  validates_presence_of  :nome_entrevistado, :texto, :message => "não pode estar vazio"
end
#encoding: utf-8
class Interview < ActiveRecord::Base
  belongs_to :author
  extend FriendlyId
  friendly_id :nome_entrevistado, use: :slugged
  validates_presence_of  :nome_entrevistado, :author_id, :texto, :message => "não pode estar vazio"
end
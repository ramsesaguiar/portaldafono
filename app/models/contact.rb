#encoding: utf-8
class Contact < ActiveRecord::Base
  validates_presence_of :email, :texto, :nome,  :message => "não pode estar vazio;"
  validates_format_of  :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => 'email deve ser válido;'
end

class News < ActiveRecord::Base
  belongs_to :author
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  has_attached_file :image, :styles => { :medium => "305x206>", :thumb => "100x100>" }
  validates_presence_of  :titulo, :author_id, :texto, :message => "não pode estar vazio;"
end

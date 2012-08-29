class News < ActiveRecord::Base
  belongs_to :author

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_presence_of  :titulo, :author_id, :texto, :message => "não pode estar vazio;"
end

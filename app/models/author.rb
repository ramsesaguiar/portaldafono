class Author < ActiveRecord::Base
  has_many :articles
  has_many :discussions
  has_many :doubts
  has_many :news
  has_many :interviews

  extend FriendlyId
  friendly_id :nome, use: :slugged

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end

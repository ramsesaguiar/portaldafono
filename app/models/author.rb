class Author < ActiveRecord::Base
  has_many :articles
  has_many :discussions
  has_many :doubts
  has_many :news
end

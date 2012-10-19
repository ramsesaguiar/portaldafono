class Interview < ActiveRecord::Base
	belongs_to :author
  extend FriendlyId
  friendly_id :nome_entrevistado, use: :slugged
end

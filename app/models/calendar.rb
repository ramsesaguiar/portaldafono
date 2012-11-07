class Calendar < ActiveRecord::Base
	#encoding: utf-8
	validates_presence_of :titulo, :local, :informacao, :sobre, :data, :message => "nao pode estar vazio;"

end

class CalendarsController < ApplicationController
  def index
    @calendars = Calendar.where("data >= CURDATE()").order("data ASC").limit(10)
    
    set_meta_tags :title => 'Agenda', 
    :description => 'Aqui voc&ecirc; encontra alguns dos principais eventos relacionados a fonoaudiologia, simp&oacute;sios, cursos, congressos e palestras envolvendo o mundo da fonoaudiologia', 
    :keywords => 'fonoaudiologia, agenda da fono, cursos de fonoaudiologia,  congressos de fono, palestras de fonoaudiologia'
    @sidebar = false
  
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calendars }
    end
  end
end
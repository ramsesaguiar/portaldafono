class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :proximo_evento

  def proximo_evento
  	@evento = Calendar.where("data >= CURDATE()").order("data ASC").limit(1)
  end
  
end

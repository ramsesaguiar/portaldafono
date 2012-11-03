module ApplicationHelper

  def current_user
  	session if !session[:current_user_id].nil?
  end


  def mes_do_ano_em_portugues mouth
    case mouth
      when "Jan"
        retorno = "Jan"
      when "Feb"
        retorno = "Feb"
       when "Mar"
        retorno = "Mar"  
       when "Apr"
        retorno = "Abr"
       when "May"
        retorno = "Mai"
       when "Jun"
        retorno = "Jun"
       when "Jul"
        retorno = "Jul"
       when "Aug"
        retorno = "Ago"
       when "Sep"
        retorno  = "Set"
       when "Oct"
        retorno = "Out"
       when "Nov"
        retorno = "Nov"
       when "Dec"
        retorno = "Dez"
     end
    return retorno
  end

end

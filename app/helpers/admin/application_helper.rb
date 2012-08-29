﻿module Admin::ApplicationHelper
	def session_user
		@session_user ||= Author.find(:first, :conditions => ['id = ?', session[:current_user_id]])
	end

  def status_to_string status
    case status
      when 1
        "Aprovado"
      when 2
        "Reprovado"
    end
  end

  def hash_to_status
    stats = Hash.new
    stats["Aprovado"] = "1"
    stats["Reprovado"] = "2"
    return stats
  end


end
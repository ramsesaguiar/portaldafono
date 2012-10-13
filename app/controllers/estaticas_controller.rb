class EstaticasController < ApplicationController

  def quem_somos
    @sidebar = false
  end

  def anuncie
    @sidebar = false
  end

  def livros_recomendados
    @sidebar = false
  end

  def o_que_e_fonoaudiologia
    @sidebar = false
  end


end

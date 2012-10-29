class EstaticasController < ApplicationController

  def quem_somos
    set_meta_tags :title => 'Quem somos', 
    :description => 'formandos de Fonoaudiologia do 8 periodo da UFRJ. O portal da fono surgiu, pela necessidade de encontrar todas as informa&ccedil;&otilde;es do dia-a-dia da Fonoaudiologia em um s&oacute; lugar. Ap&oacute;s v&aacute;rias 
    pesquisas, sem sucesso, desejamos criar esse espa&ccedil;o para discuss&otilde;es, tirar d&uacute;vidas e pesquisar.', 
    :keywords => 'Dharana Gaia, Nayany Leite, Raiane d Andr&eacute;ia, Rafaela Gomes'
    @sidebar = false
  end

  def anuncie
    set_meta_tags :title => 'Anuncie', 
    :description => 'Sua ajuda e de grande import&acirc;ncia para n&oacute;s. Anuncie conosco', 
    :keywords => 'anuncie em portal, consultas fonoaudiologia'
    @sidebar = false
  end

  def livros_recomendados
    set_meta_tags :title => 'Livros', 
    :description => 'Separamos alguns livros que a gente imagina que seja de grande import&acirc;ncia para a sua vida acad&acirc;mica e profissional ', 
    :keywords => 'fonoaudiologia, livros, livros fono, livros recomendados fono, livros recomendados fonoaudiologia'
    @sidebar = false
  end

  def o_que_e_fonoaudiologia
     set_meta_tags :title => 'O que &eacute; fonoaudiologia', 
    :description => 'Fonoaudiologia &eacute; a profiss&atilde;o da sa&uacute;de que estuda a Comunica&ccedil;&atilde;o Humana. &Eacute; respons&aacute;vel por atuar nas &aacute;reas de Audiologia, Voz, Motricidade Orofacial e Linguagem nas quais, tem o dever de diagnosticar, orientar e tratar. ', 
    :keywords => 'fonoaudiologia, fono, o que e fonoaudiologia, fonaudiologos, tudo sobre fono, portal da fono'
    @sidebar = false
  end

  def como_enviar_suas_duvidas
    set_meta_tags :title => 'Como enviar suas duvidas', 
    :description => 'Desenvolvemos uma ferramenta para que voc&ecirc; possa tirar d&uacute;vidas com nossos profissionais. Nesse espa&ccedil;o, voc&ecirc; poder&aacute; perguntar sobre procedimentos, cuidados ou preven&ccedil;&oatilde;es envolvendo o mundo da fonoaudiologia.', 
    :keywords => 'fonoaudiologia, fonoaudiologia exercicios , curso fonoaudiologia, fonoaudiologista, duvidas fonoaudiologia '
    @sidebar = false
  end

  def links_uteis
    set_meta_tags :title => 'Links uteis', 
    :description => 'Separamos alguns links que a gente imagina que seja de grande import&acirc;ncia para a sua vida acad&acirc;mica e profissional ', 
    :keywords => 'fonoaudiologia, sites fono, sites recomendados fono, links recomendados fonoaudiologia'
    @sidebar = false
  end

  def termos_de_uso
    set_meta_tags :title => 'Termos de uso'
    @sidebar = false
  end

  def agenda
     set_meta_tags :title => 'Agenda', 
    :description => 'Aqui voc&ecirc; encontra alguns dos principais eventos, simp&oacute;sios, cursos, congressos e palestras envolvendo o mundo da fonoaudiologia', 
    :keywords => 'fonoaudiologia, agenda da fono, cursos de fonoaudiologia,  congressos de fono, palestras de fonoaudiologia'
    @sidebar = false
  end


end

Portaldafono::Application.routes.draw do

 root :to=> "index#index"
  
 namespace :admin do  
  root :to=> "index#index"
  match "login" => "login#index"
  match "login/do_login" => "login#do_login"
  match "login/logout" => "login#logout"
 end

namespace :admin do  
  resources :newsletters 
  resources :contacts, :path => "faleconosco", :path_names => { :new => :inserir, :edit => :alterar } 
  resources :calendars, :path => "agenda", :path_names => { :new => :inserir, :edit => :alterar } 
  resources :super_highlights, :path => "superdestaques", :path_names => { :new => :inserir, :edit => :alterar } 
  resources :doubts, :path => "duvidas", :path_names => { :new => :inserir, :edit => :alterar }
  resources :news, :path => "noticias", :path_names => { :new => :inserir, :edit => :alterar }
  resources :discussions, :path => "debates", :path_names => { :new => :inserir, :edit => :alterar }
  resources :articles, :path => "artigos", :path_names => { :new => :inserir, :edit => :alterar }
  resources :authors, :path => "autores", :path_names => { :new => :inserir, :edit => :alterar } 
  resources :users, :path => "usuarios", :path_names => { :new => :inserir, :edit => :alterar }
  resources :interviews, :path => "entrevistas", :path_names => { :new => :inserir, :edit => :alterar }
end

resources :news, :path => "noticias", :path_names => { :new => :inserir, :edit => :alterar }
resources :calendars , :path => "agenda", :path_names => { :new => :inserir, :edit => :alterar }
resources :discussions, :path => "debates", :path_names => { :new => :inserir, :edit => :alterar }
resources :contacts, :path => "faleconosco"
resources :doubts, :path => "duvidas", :path_names => { :new => :inserir, :edit => :alterar }
resources :articles, :path => "artigos"
resources :authors, :path => "autores", :path_names => { :new => :inserir, :edit => :alterar }
resources :users, :path => "usuarios", :path_names => { :new => :inserir, :edit => :alterar }
resources :interviews, :path => "entrevistas"

match 'subscribe_to_newsletter' => 'index#subscribe_to_newsletter'

# ESTATICAS #
match "quem-somos" => "estaticas#quem_somos"
match "anuncie" => "estaticas#anuncie"
match "livros-recomendados" => "estaticas#livros_recomendados"
match "o-que-e-fonoaudiologia" => "estaticas#o_que_e_fonoaudiologia"
match "termos-de-uso" => "estaticas#termos_de_uso"
match "como-enviar-suas-duvidas" => "estaticas#como_enviar_suas_duvidas"
match "links-uteis" => "estaticas#links_uteis"
match "termos-de-uso" => "estaticas#termos_de_uso"
match "manuais" => "estaticas#manuais"
match "legislacao" => "estaticas#legislacao"
match "juramento-do-fonoaudiologo" => "estaticas#juramento"
match "guias-e-manuais" => "estaticas#guias_e_manuais"
match "historia-da-fonoaudiologia" => "estaticas#historia"




#LOGIN WITH FACEBOOK#
match '/auth/:provider/callback' => 'login#create'
match '/auth/failure', :to => 'login#failure'
match '/sair', :to => 'login#destroy'
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
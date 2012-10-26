class Admin::AuthorsController < Admin::ApplicationController
  # GET /admin/authors
  # GET /admin/authors.json
  def index
    @admin_author = Author.find(session[:admin_current_user_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_author }
    end
  end


  # GET /admin/authors/1/edit
  def edit
    @admin_author = Author.find(session[:admin_current_user_id])
  end


  # PUT /admin/authors/1
  # PUT /admin/authors/1.json
  def update
    @admin_author = Author.find(session[:admin_current_user_id])

    respond_to do |format|
      if @admin_author.update_attributes(params[:author])
        format.html { redirect_to  :action => "index" , notice: 'Autor atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: [:admin, @admin_author.errors], status: :unprocessable_entity }
      end
    end
  end


end

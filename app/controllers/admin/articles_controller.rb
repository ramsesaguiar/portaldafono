class Admin::ArticlesController < Admin::ApplicationController
  # GET /admin/articles
  # GET /admin/articles.json
  def index
    #@admin_articles = Article.all
    @admin_articles = Article.find(:all, :include => :author)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_articles }
    end
  end

  # GET /admin/articles/1
  # GET /admin/articles/1.json
  def show
    @admin_article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_article }
    end
  end

  # GET /admin/articles/new
  # GET /admin/articles/new.json
  def new
    @admin_article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_article }
    end
  end

  # GET /admin/articles/1/edit
  def edit
    @admin_article = Article.find(params[:id], :include => :author) 
  end

  # POST /admin/articles
  # POST /admin/articles.json
  def create
    @admin_article = Article.new(params[:article])

    respond_to do |format|
      if @admin_article.save
        format.html { redirect_to [:admin, @admin_article], notice: 'O artigo foi criado com sucesso.' }
        format.json { render json: [:admin, @admin_article], status: :created, location: @admin_article }
      else
        format.html { render action: "new" }
        format.json { render json: [:admin, @admin_article.erros], status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/articles/1
  # PUT /admin/articles/1.json
  def update
    @admin_article = Article.find(params[:id])

    respond_to do |format|
      if @admin_article.update_attributes(params[:article])
        format.html { redirect_to [:admin, @admin_article], notice: 'O artigo foi atualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: [:admin, @admin_article.erros], status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/articles/1
  # DELETE /admin/articles/1.json
  def destroy
    @admin_article = Article.find(params[:id])
    @admin_article.destroy

    respond_to do |format|
      format.html { redirect_to admin_articles_url }
      format.json { head :no_content }
    end
  end
end
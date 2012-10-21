class Admin::InterviewsController < Admin::ApplicationController
  # GET /admin/interviews
  # GET /admin/interviews.json
  def index
     @admin_interviews = Interview.find(:all, :include => :author)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_interviews }
    end
  end

  # GET /admin/interviews/1
  # GET /admin/interviews/1.json
  def show
    @admin_interview = Interview.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_interview }
    end
  end

  # GET /admin/interviews/new
  # GET /admin/interviews/new.json
  def new
    @admin_interview = Interview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_interview }
    end
  end

  # GET /admin/interviews/1/edit
  def edit
    @admin_interview = Interview.find(params[:id], :include => :author) 
  end

  # POST /admin/interviews
  # POST /admin/interviews.json
  def create
    @admin_interview = Interview.new(params[:interview])

    respond_to do |format|
      if @admin_interview.save
        format.html { redirect_to [:admin, @admin_interview], notice: 'Entrevista criada com sucesso.' }
        format.json { render json: [:admin, @admin_interview], status: :created, location: @admin_interview }
      else
        format.html { render action: "new" }
        format.json { render json: [:admin, @admin_interview.erros], status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/interviews/1
  # PUT /admin/interviews/1.json
  def update
    @admin_interview = Interview.find(params[:id])

    respond_to do |format|
      if @admin_interview.update_attributes(params[:interview])
        format.html { redirect_to [:admin, @admin_interview], notice: 'Entrevista atualizada com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: [:admin, @admin_interview.erros], status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/interviews/1
  # DELETE /admin/interviews/1.json
  def destroy
    @admin_interview = Interview.find(params[:id])
    @admin_interview.destroy

    respond_to do |format|
      format.html { redirect_to admin_interviews_url }
      format.json { head :no_content }
    end
  end
end

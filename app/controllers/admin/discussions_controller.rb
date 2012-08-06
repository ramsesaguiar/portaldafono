class Admin::DiscussionsController < Admin::ApplicationController
  # GET /admin/discussions
  # GET /admin/discussions.json
  def index
    @admin_discussions = Discussion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_discussions }
    end
  end

  # GET /admin/discussions/1
  # GET /admin/discussions/1.json
  def show
    @admin_discussion = Discussion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: [:admin,@admin_discussion] }
    end
  end

  # GET /admin/discussions/new
  # GET /admin/discussions/new.json
  def new
    @admin_discussion = Discussion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: [:admin,@admin_discussion] }
    end
  end

  # GET /admin/discussions/1/edit
  def edit
    @admin_discussion = Discussion.find(params[:id])
  end

  # POST /admin/discussions
  # POST /admin/discussions.json
  def create
    @admin_discussion = Discussion.new(params[:discussion])

    respond_to do |format|
      if @admin_discussion.save
        format.html { redirect_to [:admin,@admin_discussion], notice: 'Debate criado com sucesso.' }
        format.json { render json: [:admin,@admin_discussion], status: :created, location: @admin_discussion }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/discussions/1
  # PUT /admin/discussions/1.json
  def update
    @admin_discussion = Discussion.find(params[:id])

    respond_to do |format|
      if @admin_discussion.update_attributes(params[:discussion])
        format.html { redirect_to [:admin,@admin_discussion], notice: 'Debate atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/discussions/1
  # DELETE /admin/discussions/1.json
  def destroy
    @admin_discussion = Discussion.find(params[:id])
    @admin_discussion.destroy

    respond_to do |format|
      format.html { redirect_to admin_discussions_url }
      format.json { head :no_content }
    end
  end
end

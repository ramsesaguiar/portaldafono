class Admin::DiscussionsController < ApplicationController
  # GET /admin/discussions
  # GET /admin/discussions.json
  def index
    @admin_discussions = Admin::Discussion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_discussions }
    end
  end

  # GET /admin/discussions/1
  # GET /admin/discussions/1.json
  def show
    @admin_discussion = Admin::Discussion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_discussion }
    end
  end

  # GET /admin/discussions/new
  # GET /admin/discussions/new.json
  def new
    @admin_discussion = Admin::Discussion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_discussion }
    end
  end

  # GET /admin/discussions/1/edit
  def edit
    @admin_discussion = Admin::Discussion.find(params[:id])
  end

  # POST /admin/discussions
  # POST /admin/discussions.json
  def create
    @admin_discussion = Admin::Discussion.new(params[:admin_discussion])

    respond_to do |format|
      if @admin_discussion.save
        format.html { redirect_to @admin_discussion, notice: 'Discussion was successfully created.' }
        format.json { render json: @admin_discussion, status: :created, location: @admin_discussion }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/discussions/1
  # PUT /admin/discussions/1.json
  def update
    @admin_discussion = Admin::Discussion.find(params[:id])

    respond_to do |format|
      if @admin_discussion.update_attributes(params[:admin_discussion])
        format.html { redirect_to @admin_discussion, notice: 'Discussion was successfully updated.' }
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
    @admin_discussion = Admin::Discussion.find(params[:id])
    @admin_discussion.destroy

    respond_to do |format|
      format.html { redirect_to admin_discussions_url }
      format.json { head :no_content }
    end
  end
end

class DiscussionUsersController < ApplicationController
  # GET /discussion_users
  # GET /discussion_users.json
  def index
    @discussion_users = DiscussionUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @discussion_users }
    end
  end

  # GET /discussion_users/1
  # GET /discussion_users/1.json
  def show
    @discussion_user = DiscussionUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @discussion_user }
    end
  end

  # GET /discussion_users/new
  # GET /discussion_users/new.json
  def new
    @discussion_user = DiscussionUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @discussion_user }
    end
  end

  # GET /discussion_users/1/edit
  def edit
    @discussion_user = DiscussionUser.find(params[:id])
  end

  # POST /discussion_users
  # POST /discussion_users.json
  def create
    @discussion_user = DiscussionUser.new(params[:discussion_user])

    respond_to do |format|
      if @discussion_user.save
        format.html { redirect_to @discussion_user, notice: 'Discussion user was successfully created.' }
        format.json { render json: @discussion_user, status: :created, location: @discussion_user }
      else
        format.html { render action: "new" }
        format.json { render json: @discussion_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /discussion_users/1
  # PUT /discussion_users/1.json
  def update
    @discussion_user = DiscussionUser.find(params[:id])

    respond_to do |format|
      if @discussion_user.update_attributes(params[:discussion_user])
        format.html { redirect_to @discussion_user, notice: 'Discussion user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @discussion_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discussion_users/1
  # DELETE /discussion_users/1.json
  def destroy
    @discussion_user = DiscussionUser.find(params[:id])
    @discussion_user.destroy

    respond_to do |format|
      format.html { redirect_to discussion_users_url }
      format.json { head :no_content }
    end
  end
end

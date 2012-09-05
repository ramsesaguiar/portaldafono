class DiscussionsController < ApplicationController
  # GET /discussions
  # GET /discussions.json
  def index
    @discussions = Discussion.find(:all, :include => :author)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @discussions }
    end
  end

  # GET /discussions/1
  # GET /discussions/1.json
  def show
    @discussion = Discussion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @discussion }
    end
  end
end

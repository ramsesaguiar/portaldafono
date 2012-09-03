class Admin::NewslettersController < Admin::ApplicationController
  # GET /admin/newsletters
  # GET /admin/newsletters.json
  def index
    @admin_newsletters = Newsletter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_newsletters }
    end
  end

  # DELETE /admin/newsletters/1
  # DELETE /admin/newsletters/1.json
  def destroy
    @admin_newsletter = Newsletter.find(params[:id])
    @admin_newsletter.destroy

    respond_to do |format|
      format.html { redirect_to admin_newsletters_url }
      format.json { head :no_content }
    end
  end
end

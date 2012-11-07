class Admin::CalendarsController < Admin::ApplicationController
  # GET /admin/calendars
  # GET /admin/calendars.json
  def index
    @admin_calendars = Calendar.find(:all, :order => "data ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_calendars }
    end
  end

  # GET /admin/calendars/1
  # GET /admin/calendars/1.json
  def show
    @admin_calendar = Calendar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_calendar }
    end
  end

  # GET /admin/calendars/new
  # GET /admin/calendars/new.json
  def new
    @admin_calendar = Calendar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_calendar }
    end
  end

  # GET /admin/calendars/1/edit
  def edit
    @admin_calendar = Calendar.find(params[:id])
  end

  # POST /admin/calendars
  # POST /admin/calendars.json
  def create
    @admin_calendar = Calendar.new(params[:calendar])

    respond_to do |format|
      if @admin_calendar.save
        format.html { redirect_to  [:admin, @admin_calendar] , notice: 'Evento criado com sucesso.' }
        format.json { render json: [:admin, @admin_calendar], status: :created, location: @admin_calendar }
      else
        format.html { render action: "new" }
        format.json { render json: [:admin, @admin_calendar.errors], status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/calendars/1
  # PUT /admin/calendars/1.json
  def update
    @admin_calendar = Calendar.find(params[:id])

    respond_to do |format|
      if @admin_calendar.update_attributes(params[:calendar])
        format.html { redirect_to [:admin, @admin_calendar], notice: 'Calendar atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: [:admin, @admin_calendar.errors], status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/calendars/1
  # DELETE /admin/calendars/1.json
  def destroy
    @admin_calendar = Calendar.find(params[:id])
    @admin_calendar.destroy

    respond_to do |format|
      format.html { redirect_to admin_calendars_url }
      format.json { head :no_content }
    end
  end
end

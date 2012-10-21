class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.json
  def index
	@contact = Contact.new
	respond_to do |format|
      format.html { render action: "new" }
      format.json { render json: @contact }
    end
  end

 
  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

  

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        UserMailer.fale_conosco_enviado(@contact).deliver
        format.html { redirect_to action: "index", notice: 'sucess' }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

end

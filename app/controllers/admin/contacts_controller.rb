class Admin::ContactsController < Admin::ApplicationController
  # GET /admin/contacts
  # GET /admin/contacts.json
  def index
    @admin_contacts = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_contacts }
    end
  end

  # GET /admin/contacts/1
  # GET /admin/contacts/1.json
  def show
    @admin_contact = Contact.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_contact }
    end
  end

  # GET /admin/contacts/1/edit
  def edit
    @admin_contact = Contact.find(params[:id])
  end


  # PUT /admin/contacts/1
  # PUT /admin/contacts/1.json
  def update
    @admin_contact = Contact.find(params[:id])

    respond_to do |format|
      if @admin_contact.update_attributes(params[:contact])
        format.html { redirect_to [:admin,@admin_contact], notice: 'Contact foi atualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contacts/1
  # DELETE /admin/contacts/1.json
  def destroy
    @admin_contact = Contact.find(params[:id])
    @admin_contact.destroy

    respond_to do |format|
      format.html { redirect_to admin_contacts_url }
      format.json { head :no_content }
    end
  end
end

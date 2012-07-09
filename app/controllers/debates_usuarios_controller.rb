class DebatesUsuariosController < ApplicationController
  # GET /debates_usuarios
  # GET /debates_usuarios.json
  def index
    @debates_usuarios = DebatesUsuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @debates_usuarios }
    end
  end

  # GET /debates_usuarios/1
  # GET /debates_usuarios/1.json
  def show
    @debates_usuario = DebatesUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @debates_usuario }
    end
  end

  # GET /debates_usuarios/new
  # GET /debates_usuarios/new.json
  def new
    @debates_usuario = DebatesUsuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @debates_usuario }
    end
  end

  # GET /debates_usuarios/1/edit
  def edit
    @debates_usuario = DebatesUsuario.find(params[:id])
  end

  # POST /debates_usuarios
  # POST /debates_usuarios.json
  def create
    @debates_usuario = DebatesUsuario.new(params[:debates_usuario])

    respond_to do |format|
      if @debates_usuario.save
        format.html { redirect_to @debates_usuario, notice: 'Debates usuario was successfully created.' }
        format.json { render json: @debates_usuario, status: :created, location: @debates_usuario }
      else
        format.html { render action: "new" }
        format.json { render json: @debates_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /debates_usuarios/1
  # PUT /debates_usuarios/1.json
  def update
    @debates_usuario = DebatesUsuario.find(params[:id])

    respond_to do |format|
      if @debates_usuario.update_attributes(params[:debates_usuario])
        format.html { redirect_to @debates_usuario, notice: 'Debates usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @debates_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debates_usuarios/1
  # DELETE /debates_usuarios/1.json
  def destroy
    @debates_usuario = DebatesUsuario.find(params[:id])
    @debates_usuario.destroy

    respond_to do |format|
      format.html { redirect_to debates_usuarios_url }
      format.json { head :no_content }
    end
  end
end

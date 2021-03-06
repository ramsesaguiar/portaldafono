﻿class Admin::DoubtsController < Admin::ApplicationController
  # GET /admin/doubts
  # GET /admin/doubts.json
  def index
    @admin_doubts = Doubt.includes(:author, :user).order('created_at DESC').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_doubts }
    end
  end

  # GET /admin/doubts/1
  # GET /admin/doubts/1.json
  def show
    @admin_doubt = Doubt.includes(:author, :user).find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_doubt }
    end
  end

  # GET /admin/doubts/new
  # GET /admin/doubts/new.json
  def new
    @admin_doubt = Doubt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_doubt }
    end
  end

  # GET /admin/doubts/1/edit
  def edit
    @admin_doubt = Doubt.includes(:author, :user).find(params[:id])
  end

  # POST /admin/doubts
  # POST /admin/doubts.json
  def create
    @admin_doubt = Doubt.new(params[:doubt])

    respond_to do |format|
      if @admin_doubt.save
        format.html { redirect_to [:admin,@admin_doubt], notice: 'Dúvida criada com sucesso.' }
        format.json { render json: @admin_doubt, status: :created, location: @admin_doubt }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/doubts/1
  # PUT /admin/doubts/1.json
  def update
    @admin_doubt = Doubt.find(params[:id])

    respond_to do |format|
      if @admin_doubt.update_attributes(params[:doubt])
        format.html { redirect_to [:admin,@admin_doubt], notice: 'Dúvida atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/doubts/1
  # DELETE /admin/doubts/1.json
  def destroy
    @admin_doubt = Doubt.find(params[:id])
    @admin_doubt.destroy

    respond_to do |format|
      format.html { redirect_to admin_doubts_url }
      format.json { head :no_content }
    end
  end
end

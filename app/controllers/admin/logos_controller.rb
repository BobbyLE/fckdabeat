class Admin::LogosController < ApplicationController
  def index
    @logo = Logo.find(1)
  end

  def show
    @logo = Logo.find(1)
  end

  def new
    @logo = Logo.new
  end

  def edit
    @logo = Logo.find(params[:id])
  end
  
  def create
    @logo = Logo.new(params[:logo])
    if @logo.save
      flash[:success] = "Logo uploaded!"
      redirect_to admin_logos_path
    else
      render 'new'
    end
  end

  def update
    @logo = Logo.find(1)

    respond_to do |format|
      if @logo.update_attributes(params[:logo])
        format.html { redirect_to admin_logos_path, notice: 'Logo was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end

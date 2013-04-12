class Admin::ImagesController < ApplicationController
  before_filter :signed_in_user, only: [:new, :create, :index, :destroy]
  
  def new
    @image = Image.new
  end
  
  def index
    @images = Image.paginate(:page => params[:page], :per_page => 9)
  end
  
  def create
    @image = Image.new(params[:image])
    if @image.save
      flash[:success] = "Image uploaded!"
      redirect_to admin_images_path
    else
      render 'new'
    end
  end
  
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    Image.reset_pk_sequence
    redirect_to admin_images_path
  end
end
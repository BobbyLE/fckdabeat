class AboutusController < ApplicationController
  before_filter :signed_in_user, only: [:admin_index, :create, :edit]
  def index
    @aboutus = Aboutu.find(1)
  end
  
  def admin_index
    @aboutus = Aboutu.find(1)
  end

  def show
    @aboutu = Aboutu.find(1)
  end

  def new
  end

  def edit
    @aboutu = Aboutu.find(1)
  end
  
  def create
  end

  def update
    @aboutu = Aboutu.find(1)

    respond_to do |format|
      if @aboutu.update_attributes(params[:aboutu])
        format.html { redirect_to admin_aboutus_path, notice: 'Page About us was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
  
  def destroy
  end
end

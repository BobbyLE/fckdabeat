class Admin::UsersController < ApplicationController 
  before_filter :signed_in_user, only: [:index, :show, :edit, :update]
  before_filter :correct_user,   only: [:edit, :update]
   
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page])
  end
  
  
  def index
    @users = User.paginate(:page => params[:page], :per_page => 9)
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to admin_user_path(@user)
    else
      render 'edit'
    end
  end
  
  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(admin_path) unless current_user?(@user)
    end
end

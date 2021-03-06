class SessionsController < ApplicationController
  force_ssl :except => :destroy
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:success] = "Logged in successful!"
      redirect_back_or admin_user_path(user)
    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
  
  def destroy
    sign_out
    redirect_to signin_path
  end
end

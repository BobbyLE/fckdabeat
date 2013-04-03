class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:success] = "Logged in successful!"
      redirect_to user
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

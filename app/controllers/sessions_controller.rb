class SessionsController < ApplicationController
  
  skip_before_action :authenticate
  def new
  end
  
  
  def create
    administrator = Administrator.find_by(email: params[:sessions][:email].downcase)
    if administrator && administrator.password == params[:sessions][:password]
    log_in administrator
    flash[:notice] = 'Logged in'  
    redirect_to root_path
    else
      flash.now[:alert] = 'Invalid email/password'     
      render 'new'
    end  
  end 
  
  def destroy 
      log_out 
      flash[:notice] = 'Logged out' 
      redirect_to root_path
  end
end

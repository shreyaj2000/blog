class SessionsController < ApplicationController

  def new
  end
  
  def create
    email = "shreya.sharad.jadhav@gmail.com"
    password = "foobar"
    
    if (email == params[:session][:email]) && (password == params[:session][:password])
      log_in email
      redirect_to articles_url
    else
      flash.now[:danger] = 'Invalid email or password'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end

end

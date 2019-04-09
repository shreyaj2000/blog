module SessionsHelper


  def log_in(user)
    session[:email] = "shreya.sharad.jadhav@gmail.com"
  end
  
  def current_user
    if session[:email]
      @current_user = "Shreya"
    end
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:email)
    @current_user = nil
  end
  
  def flash_class(level)
    case level
      when :error then "alert alert-error"
    end
  end

end

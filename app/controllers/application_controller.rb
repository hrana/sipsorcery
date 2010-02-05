class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def login_required
	  if session[:authID]
		  return true
	  end
	  flash[:warning] = 'Please login to continue'
	  session[:return_to] = request.request_uri
	  redirect_to :controller => "auth", :action => "login"
	  return false 
  end
  
end

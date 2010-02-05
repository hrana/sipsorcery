require 'SIPAccount'

class SipaccountsController < ApplicationController
	
	before_filter :login_required, :only => ['index']
	
	def index
		begin
			@SIPAccounts = SIPAccount.new.all( session[:authID] )
		rescue
			flash[:warning] = 'Error retrieving SIP accounts.'
			redirect_to :controller => "auth", :action => "login"
		end
	end
	
end

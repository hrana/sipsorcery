require 'SIPAccount'

class SipaccountsController < ApplicationController
	
	before_filter :login_required, :only => ['index']
	
	def index
		@SIPAccounts = SIPAccount.new.all( session[:authID] )
	end
	
end

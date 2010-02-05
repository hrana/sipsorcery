require 'httpclient'
require 'rexml/document'

class AuthController < ApplicationController
	
	def login
		username = (request.post?) ? params[:user][:login] : nil
		password = (request.post?) ? params[:user][:password] : nil
		
		if username != nil && password != nil
			
			client = HTTPClient.new
			resp = client.get_content("https://www.sipsorcery.com/provisioning.svc/rest/customer/login?username=#{username}&password=#{password}")
			doc = REXML::Document.new(resp)
			if doc != nil && doc.elements[1] != nil
				session[:authID] = doc.elements[1].text
			end
		
			if session[:authID] != nil
				redirect_to :controller => "sipaccounts", :action => "index"
			else
				flash[:warning] = "Login unsuccessful"
			end
		end
	end
	
	def logout
		session[:authID] = nil
		redirect_to :action => "login"
	end
end

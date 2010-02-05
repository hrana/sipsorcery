require 'httpclient'
require 'json'

class SIPAccount
	
	def all (authID)
		
		client = HTTPClient.new
		resp = client.get_content("https://www.sipsorcery.com/provisioning.svc/rest/sipaccounts?count=10", nil,  "authid" => authID)
		result = JSON.parse(resp)			
			   
		sipAccounts = []
		result.each do |sipAccount| 
			sipAccounts.push(sipAccount)
		end
		sipAccounts
	end
end
require 'httpclient'
require 'json'

class SIPAccount
	
	def all (authID)
		
		client = HTTPClient.new
		resp = client.get_content("https://www.sipsorcery.com/provisioning.svc/rest/sipaccounts?count=10", nil,  "authid" => authID)
		result = JSON.parse(resp)			
		
		#uri = URI("http://localhost:60791")
		#http = Net::HTTP.new(uri.host, uri.port)
		#response = http.send_request('GET', '/Provisioning/SIPProvisioningWebService.svc/rest/sipaccounts?format=json', nil,  "authid" => authID)
		#result = JSON.parse(response.body)
		   
		sipAccounts = []
		result.each do |sipAccount| 
			sipAccounts.push(sipAccount)
		end
		sipAccounts
	end
end
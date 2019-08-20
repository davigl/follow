require 'httparty'
require 'base64'

module Github
	def follow_user(username, password, fuser)
		credentials = Base64.encode64("#{username}:#{password}")
		base_uri = URI("https://api.github.com/user/following/#{fuser}")

		response = HTTParty.put(base_uri.to_s, headers: {
			'Authorization' => ('Basic ' + credentials),
			'User-Agent' => 'Patassaura'
		})
	end

	def follow_all_users(fuser)
		base_uri = URI("https://api.github.com/users/#{fuser}/followers")

		response = HTTParty.get(base_uri.to_s, headers: {
			'User-Agent' => 'Patassaura'	
		}).body

		p response
	end
end
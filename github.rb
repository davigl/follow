require 'httparty'
require 'base64'

module Github

	# Following a specific github user, using basic auth.

	def follow_user(username, password, fuser)
		credentials = Base64.encode64("#{username}:#{password}")
		base_uri = URI("https://api.github.com/user/following/#{fuser}")

		response = HTTParty.put(base_uri.to_s, headers: {
			'Authorization' => ('Basic ' + credentials),
			'User-Agent' => 'Patassaura'
		})

		puts "followed #{fuser}"
	end

	# Getting all the followers from a github user.

	def get_followers(fuser, current_page)
		base_uri = URI("https://api.github.com/users/#{fuser}/followers?page=#{current_page}")

		response = HTTParty.get(base_uri.to_s, headers: {
			'User-Agent' => 'Patassaura'	
		}).parsed_response

		return response
	end

	# Method that iterates through json and starts to follow everyone.

	def follow_all_users(username, password, json)
		json.each do |user|
			login_user = user['login']
			follow_user(username, password, login_user)
		end
	end
end
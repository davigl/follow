require_relative 'github'

include Github

class User
	def initialize(username, password)
		@username, @password = username, password
	end

	def follow(user)
		follow_user(@username, @password, user)
	end

	def follow_all(user)
		follow_all_users(user)
	end
end

user = User.new("credentials", "credentials")

user.follow_all("test")

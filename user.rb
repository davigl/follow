require_relative 'github'

include Github

class User
	# Constructor that receives git username and password.

	def initialize(username, password)
		@username, @password = username, password
	end

	# Method to follow one github user.

	def follow(user)
		follow_user(@username, @password, user)
	end

	# Method that loops through user following page and follow their followers until the last page.

	def follow_all(user)
		current_page = 1

		loop do
			followers = get_followers(user, current_page)

			current_page += 1

			followers.any? ? follow_all_users(@username, @password, followers) : break
		end
	end
end

# Receiving params, username, password, followers_user

followers_user = ARGV[2].to_s
user = User.new(ARGV[0].to_s, ARGV[1].to_s)

user.follow_all(followers_user)

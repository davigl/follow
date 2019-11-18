# frozen_string_literal: true

require 'httparty'

module Github
  # Following a specific github user, using basic auth.

  def follow_user(credentials, fuser)
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

    response
  end

  # Method that iterates through json and starts to follow everyone.

  def follow_all_users(credentials, json)
    json.each do |user|
      login_user = user['login']
      follow_user(credentials, login_user)
    end
  end
end

##
# Service to get posts from facebook
class FacebookService
    URL = "https://takehome.io/facebook"

    class << self
      def update
        HTTParty.get(URL)
      end
    end
  end
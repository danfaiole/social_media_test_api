##
# Service to get posts from Instagram
class InstagramService
    URL = "https://takehome.io/instagram"

    class << self
      def update
        HTTParty.get(URL)
      end
    end
  end
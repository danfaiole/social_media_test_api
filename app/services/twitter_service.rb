##
# Service to get tweets from endpoint
class TwitterService
  URL = "https://takehome.io/twitter"

  class << self
    def update
      HTTParty.get(URL)
    end
  end
end
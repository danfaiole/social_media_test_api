##
# Service to get tweets from endpoint
class TwitterService
  # Makes the request to the social media and saves to the model
  # so we can cache the responses
  URL = "https://takehome.io/twitter"

  class << self
    def update
      response = HTTParty.get(URL)
      process_response(response)
    end

    def process_response(response)
      Twitter.create!(response_body: JSON.parse(response.body)) if response.code == 200
    end
  end
end
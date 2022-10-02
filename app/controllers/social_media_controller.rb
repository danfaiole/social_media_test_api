class SocialMediaController < ApplicationController
  def index
    render json: { message: "test" }
  end

  private

  def json_response
    {
      twitter: Twitter.last_request,
      facebook: Facebook.last_request,
      instagram: Instagram.last_request
    }
  end
end

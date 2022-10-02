class SocialMediaController < ApplicationController
  def index
    render json: { message: "test" }
  end

  private

  def json_response
    {
      twitter: ,
      facebook: ,
      instagram:
    }
  end
end

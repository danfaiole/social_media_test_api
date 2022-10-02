class SocialMediaController < ApplicationController
  def index
    render json: { message: "test" }
  end
end

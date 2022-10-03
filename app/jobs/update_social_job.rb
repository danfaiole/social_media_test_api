# frozen_string_literal: true

require 'sidekiq-scheduler'

# This worker updates the "cache" each 3 minutes with responses from all social media
class UpdateSocialJob
  include Sidekiq::Worker

  queue_as :default

  def perform
    [
      FacebookService,
      InstagramService,
      TwitterService
    ].each do |service|
      service.update
    end
  end
end

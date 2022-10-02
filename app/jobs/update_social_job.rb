require 'sidekiq-scheduler'

class UpdateSocialJob < ApplicationJob
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

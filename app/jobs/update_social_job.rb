require 'sidekiq-scheduler'

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

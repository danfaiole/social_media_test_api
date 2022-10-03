class Twitter < ApplicationRecord
  validates :response_body, presence: true

  # Gets the latest request from the cache. If there's nothing, it returns
  # an json with a error message.
  def self.last_request
    last_request = self.last

    if last_request.present?
      last_request.response_body
    else
      [{ error: "We are having some problems getting data", status: 503 }]
    end
  end
end

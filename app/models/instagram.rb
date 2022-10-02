class Instagram < ApplicationRecord
  validates :response_body, presence: true

  def self.last_request
    last_request = self.last

    if last_request.present?
      last_request.response_body
    else
      [{ error: "We are having some problems getting data", status: 503 }]
    end
  end
end

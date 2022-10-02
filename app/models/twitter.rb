class Twitter < ApplicationRecord
  validate :response_body, presence: true
end

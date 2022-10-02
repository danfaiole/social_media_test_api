class Instagram < ApplicationRecord
  validate :response_body, presence: true
end

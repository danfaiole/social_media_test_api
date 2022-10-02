class Facebook < ApplicationRecord
  validate :response_body, presence: true
end

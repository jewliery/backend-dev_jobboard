class Job < ApplicationRecord
    validates :title, length: {minimum: 5}, presence: true
    validates :description, length: {minimum: 5}, presence: true
end

class Question < ApplicationRecord
  belongs_to :test
  has_many :options
  validates :body, presence: true
end

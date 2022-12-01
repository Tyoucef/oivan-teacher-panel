class Option < ApplicationRecord
  belongs_to :question
  validates :suggestion, presence: true
  validates :isCorrect, presence: true
end

class Test < ApplicationRecord
    has_many :questions
    validates :name, presence: true
    validates_length_of :name, :within => 1..20
    validates :description, presence: true
    validates_uniqueness_of :name, :message => "already exists"
    accepts_nested_attributes_for :questions,
    reject_if: :all_blank, allow_destroy: true
end

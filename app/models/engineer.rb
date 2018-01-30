class Engineer < ApplicationRecord
	has_many :overtimes
	accepts_nested_attributes_for :overtimes, reject_if: proc { |attributes| attributes['hours'].blank? || attributes['day'].blank? }

	validates :name, presence: true
end

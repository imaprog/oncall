class Engineer < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	has_many :on_call_works
	accepts_nested_attributes_for :on_call_works

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end

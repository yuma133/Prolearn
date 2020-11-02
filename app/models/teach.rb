class Teach < ApplicationRecord
	belongs_to :user

	validates :lang, presence: true
	validates :level, presence: true
	validates :income, presence:true
	validates :career, presence:true, length: {maximum: 30}
end

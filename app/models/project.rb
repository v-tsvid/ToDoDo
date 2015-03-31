class Project < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('deadline ASC')}
	VALID_DATETIME_REGEX = /\A2(0|1)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-9]|3[0-1]) ([0-1][0-9]|2[0-4]):([0-5][0-9]):([0-5][0-9])\z/
	VALID_PRIORITY_REGEX = /\A[0-3]\z/
	validates :user_id, presence: true
	validates :title, presence: true, length: { maximum: 150 }
	validates :description, length: { maximum: 500 }
	#validates :deadline, format: { with: VALID_DATETIME_REGEX }
	validates :priority, presence: true, format: { with: VALID_PRIORITY_REGEX }
end

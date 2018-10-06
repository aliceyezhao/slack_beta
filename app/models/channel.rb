class Channel < ApplicationRecord
	has_and_belongs_to_many :users
	has_many :messages

	def has_user?(user)
		if user.nil?
			return false
		end
		users.each do |u|
			if u.id == user.id
				return true
			end
		end
		return false
	end
end

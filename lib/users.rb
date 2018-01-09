require "./lib/getData.rb"

class Users
	attr_reader :getData

	def initialize
		@getData = GetData.new
	end

	def users_data
		@getData.get_user_data
	end

	def user_id(email, users_data)
		users_data.each do |user|
			return user["id"] if user["email"] == email
		end
	end
end
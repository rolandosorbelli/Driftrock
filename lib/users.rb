require "./lib/getData.rb"

class Users
	attr_reader :getData

	def initialize(getData = GetData.new)
		@getData = getData
	end

	def users_data
     getData.users_data
   	end

   def purchases_data
     getData.purchases_data
   end

	def user_id(email, users_data)
		users_data.each do |user|
			return user["id"] if user["email"] == email
		end
	end

	def calculate_total_spend(user_id, purchases_data)
		total = 0
		purchases_data.each do |purchase|
			total += purchase['spend'].to_f if purchase['user_id'] == user_id
     	end
    total
	end
end
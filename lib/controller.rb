require "./lib/getData.rb"
require "./lib/users.rb"

class Controller

	attr_reader :getData, :user

	def initialize(getData = GetData.new, user = Users.new)
		@getData = getData
		@user = user
	end

	def run(arg)
		if arg[0] == 'total_spend'
      total_spend(arg[1])
    else
      puts 'The email has not been recognised'
    end
	end

	def total_spend(email)
    user_data = getData.users_data
    purchase_data = getData.purchases_data
    user_id = user.user_id(email, user_data)
    puts user.calculate_total_spend(user_id, purchase_data)
  end

end
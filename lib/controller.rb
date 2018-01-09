require "./lib/getData.rb"
require "./lib/users.rb"

class Controller

	attr_reader :getData, :user

	def initialize
		@getData = GetData.new
		@user = Users.new
	end

	def run(arg)
		puts @getData.purchases_data
		
	end

end
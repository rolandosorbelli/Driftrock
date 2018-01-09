require "./lib/getData.rb"

class Controller

	attr_reader :getData

	def initialize
		@getData = GetData.new
	end

	def run
		
	end

end
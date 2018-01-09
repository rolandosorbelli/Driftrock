require "httparty"

class GetData

  def users_data
    users = 'https://driftrock-dev-test-2.herokuapp.com/users?per_page=1000&page=1'
    response = HTTParty.get(users)
    response.parsed_response['data']
  end

	def purchases_data
    purchases = 'https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=1000&page=1'
    response = HTTParty.get(purchases)
    response.parsed_response['data']
  end
end
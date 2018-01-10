require './lib/get_data.rb'
require './lib/users.rb'

class Controller
  attr_reader :get_data, :user

  def initialize(get_data = GetData.new, user = Users.new)
    @get_data = get_data
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
    user_data = get_data.get_users_data
    purchase_data = get_data.get_purchases_data
    user_id = user.user_id(email, user_data)
    puts user.calculate_total_spend(user_id, purchase_data)
  end
end

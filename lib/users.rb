require './lib/get_data.rb'

class Users
  attr_reader :get_data

  def initialize(get_data = GetData.new)
    @get_data = get_data
  end

  def users_data
    get_data.get_users_data
  end

  def purchases_data
    get_data.get_purchases_data
  end

  def user_id(email, users_data)
    users_data.each do |user|
      return user['id'] if user['email'] == email
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

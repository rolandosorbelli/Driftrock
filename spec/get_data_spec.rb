require './lib/get_data.rb'

describe Get_data do
  subject(:data) { described_class.new }

  it 'gets users data from the API' do
    expect(data.get_users_data).not_to eq nil
  end

  it 'gets purchases data from the API' do
    expect(data.get_purchases_data).not_to eq nil
  end
end

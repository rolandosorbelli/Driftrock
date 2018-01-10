require './lib/controller.rb'
require './lib/users.rb'
require './lib/get_data.rb'

describe Controller do
  subject(:controller) { described_class.new(data, user) }
  let(:user) { double :user }
  let(:data) { double :data }

  user_data = [{
    'id' => 'KZHR-1H35-2IH8-JXYN',
    'first_name' => 'Rolando',
    'last_name' => 'Sorbelli',
    'phone' => '186.301.6921 x948',
    'email' => 'rolando@g.com'
  }]

  purchase_data = [{
    'user_id' => 'KZHR-1H35-2IH8-JXYN',
    'item' => 'Synergistic Aluminum Shoes',
    'spend' => '27.78'
  },
                   {
                     'user_id' => 'KZHR-1H35-2IH8-JXYN',
                     'item' => 'Gorgeous Paper Hat',
                     'spend' => '54.5'
                   }]

  before do
    allow(data).to receive(:get_users_data).and_return(user_data)
    allow(data).to receive(:get_purchases_data).and_return(purchase_data)
    allow(user).to receive(:user_id).and_return('KZHR-1H35-2IH8-JXYN')
    allow(user).to receive(:calculate_total_spend).and_return(82.28)
  end

  it 'prints the total of a user using the email' do
    expect { controller.total_spend('rolando@g.com') }.to output("82.28\n").to_stdout
  end
end
